

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
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
                const SizedBox(height: 10,),
                const Text("Hey, Welcome Back!", textAlign: TextAlign.left, style: TextStyle(color: Color.fromRGBO(0, 92, 187, 1), 
                  fontSize: 30.0, fontWeight: FontWeight.w900 ),),
                const SizedBox(height: 20,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Mobile Number',
                  ),
                  keyboardType: TextInputType.number, 
                ),
                const SizedBox(height: 100,),
                MaterialButton( 
                  height: 50.0, 
                  minWidth: 500.0, 
                  color: const Color.fromRGBO(227, 227, 228, 1), 
                  textColor: Colors.black,  
                  onPressed: () => {}, 
                  hoverColor: const Color.fromRGBO(0, 92, 187, 1),
                  child: const Text("Get OTP"),
                )
              ],
          ), //Container
      ),
    );
  }

}