import 'package:flutter/material.dart';

class IncomeDashboardScreen extends StatelessWidget {
  const IncomeDashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                    "You are yet to make any Investments.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w900)
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Final Income Certificate will be made available at the end of every financial year when you have made investments or earned any repayments.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 18,
                      )
                ),   
              ],
            ),
          ),
        )
      )
    );
  }
}
