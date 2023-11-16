import 'dart:ui';

import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  final String title = "Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()))),
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
