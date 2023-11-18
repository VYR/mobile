import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:raoproject/utils/dio_client.dart';
import 'home.dart';
import 'package:raoproject/utils/secure_data.dart';

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
  final DioClient _dioClient = DioClient();

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
    if (_isClicked) {
      print('storage');
      /* () async {
        String? x = await storage.getLocalData("token");
        print(x);
      };*/

      return const Home();
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset('assets/images/logo.webp'),
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
                              "email": _emailController.text,
                              "password": _passwordController.text
                            };

                            Map retrievedUser =
                                await _dioClient.login(userInfo: userInfo);
                            print('res ${retrievedUser.isNotEmpty}');
                            if (retrievedUser.isNotEmpty) {
                              print('res fg ${retrievedUser.isNotEmpty}');

                              /*await storage.setLocalData(
                                  "token",
                                  retrievedUser['token_type'] +
                                      " " +
                                      retrievedUser['access_token']);
                              await storage.setLocalData(
                                  "name", retrievedUser['user']['userName']);
                              await storage.setLocalData(
                                  "email", retrievedUser['user']['email']);
                                  */

                              setState(() {
                                _isClicked = true;
                              });
                            } else {
                              print('else ${retrievedUser.isNotEmpty}');
                              /* showDialog(
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
                            );*/
                            }

                            setState(() {
                              _isLoading = false;
                            });
                          }),
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
                                print('hello');
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
