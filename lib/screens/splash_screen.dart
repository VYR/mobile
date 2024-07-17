import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:raoproject/screens/admin_home_screen.dart';

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
        () => Navigator.of(context).pushReplacementNamed('/login'));
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
                'assets/images/logo.png',
                //fit: BoxFit.fill,
                // height: double.infinity,
                // width: double.infinity,
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/2,
                alignment: Alignment.center,

                //repeat: ImageRepeat.noRepeat,
              ),
            ]),
      ),
    );
  }
}
