import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/splashScreen.gif',
                //fit: BoxFit.fill,
                // height: double.infinity,
                // width: double.infinity,
                //width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,

                //repeat: ImageRepeat.noRepeat,
              ),
            ]),
      ),
    );
  }
}
