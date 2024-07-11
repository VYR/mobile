//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:raoproject/constants.dart';
import 'package:raoproject/enums/shared_enum.dart';
import 'package:raoproject/utils/dio_client.dart';
import 'package:raoproject/utils/loggers.dart';
import 'package:raoproject/utils/secure_data.dart';

import 'home.dart';

const String _h = 'login';

class Login extends StatefulWidget {
  const Login({super.key});
  final String title = "Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final SecureStorage storage = SecureStorage();


  bool _isLoading = false;
  bool _isClicked = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final DioClient _dioClient = DioClient(context);
    if (_isClicked) {
      logDebug(_h, 'storage');
       () async {
        String x = await SecureStorage.getLocalData("token",SPTypes.string);
        logDebug(_h, x);
      };

      return const Home();
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset('assets/images/logo.png',width: MediaQuery.of(context).size.width/2,
          height: MediaQuery.of(context).size.height/2,
          alignment: Alignment.center),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_sharp),
                      border: OutlineInputBorder(),
                      labelText: 'Phone number, email or username',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _isLoading
                      ? const CircularProgressIndicator()
                      : FilledButton(
                          style: FilledButton.styleFrom(
                              fixedSize: const Size(300, 50)),
                          child: const Text(
                            'LOGIN ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () async {
                            setState(() {
                              _isLoading = true;
                            });

                                Map userInfo = {
                              "userId": _emailController.text,
                              "password": _passwordController.text
                            };

                             Map retrievedUser =
                              await _dioClient.login(userInfo: userInfo);
                             logDebug(_h, 'res ${retrievedUser.isNotEmpty}');
                            if (retrievedUser.isNotEmpty) {
                              logDebug(
                                  _h, 'res fg ${retrievedUser.isNotEmpty}');

                            await SecureStorage.setLocalData(
                                  "token",
                                  retrievedUser['token_type'] +
                                      " " +
                                      retrievedUser['access_token'],SPTypes.string);
                              await SecureStorage.setLocalData(
                                  spUserName, retrievedUser['user']['userName'],SPTypes.string);
                              await SecureStorage.setLocalData(
                                  spUserId, retrievedUser['user']['userId'],SPTypes.string);
                              await SecureStorage.setLocalData(
                                  spEmail, retrievedUser['user']['email'],SPTypes.string);


                               setState(() {
                                _isClicked = true;
                              });
                            } else {
                              logDebug(_h, 'else ${retrievedUser.isNotEmpty}');
                              showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        CircularProgressIndicator()
                                        //Text('ID: ${retrievedUser.user.id}'),
                                        //Text('Name: ${retrievedUser.user.userName}'),
                                        // Text('Job: ${retrievedUser.user.email}'),
                                        // Text('Created at: ${retrievedUser.user.createdAt}'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }

                            setState(() {
                              _isLoading = false;
                            });
                          }
                          ),
                ),
              ),
              SizedBox(
                  height: 50,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Text('Forgot your login details? '),
                        ),
                        Expanded(
                          child: InkWell(
                              onTap: () {
                                logDebug(_h, 'hello');
                              },
                              child: const Text(
                                'Get help logging in. gf dfgh gfhgfh hs',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              )),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );
    }
  }
}
