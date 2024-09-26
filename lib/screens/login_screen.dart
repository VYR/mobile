
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget> [
              Center(child: Image.asset(
                        "assets/icon/icon.png",
                        height: 100,
                        width: 100,
                      ),
                ),
            ],
          ),
          const SizedBox(height: 100,),
          const Text("Hey, Welcome Back", textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontSize: 10.0),),
        ],
      ),
    );
  }

}