import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:raoproject/utils/dio_client.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  final String title = "Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  final DioClient _dioClient = DioClient();

  bool isCreating = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset('assets/images/logo.webp'),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                //controller: _emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    border: OutlineInputBorder(),
                    labelText: 'Phone number, email or username',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                //controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: FilledButton(
                    style:
                        FilledButton.styleFrom(fixedSize: const Size(300, 50)),
                    child: const Text(
                      'LOGIN ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () async {
                      setState(() {
                        isCreating = true;
                      });

                      Map userInfo = {
                        "email": "yalamanda118@gmail.com",
                        "password": "vyr@123"
                      };

                      Map retrievedUser =
                          await _dioClient.login(userInfo: userInfo);

                      if (retrievedUser != null) {
                        print(retrievedUser['access_token']);
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
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
                        isCreating = false;
                      });
                    }
                    //() => Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()))
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
