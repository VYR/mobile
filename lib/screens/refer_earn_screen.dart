import 'package:flutter/material.dart';

class ReferEarnScreen extends StatelessWidget {
  const ReferEarnScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 230, 250, 1), 
                    borderRadius: BorderRadius.circular(14.0), 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      const Text(
                        "Your KYC verification is in progress",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(47, 44, 81, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8), 
                      const Text(
                        "We will notify you as soon as it is verified. Please reach out for support.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(42, 38, 38, 1),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MaterialButton(
                        height: 45.0,
                        minWidth: 150.0,
                        color: const Color.fromRGBO(0, 92, 187, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0), 
                              ),
                        child: const Text("Get Support"),
                      ),
                    ],
                  ),
                ),
              ]
            )
          )
        )
      )
    );
  }
}