import 'package:flutter/material.dart';

class NomineeScreen extends StatelessWidget {
  const NomineeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nominee Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 70),
                Column(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        "assets/icon/nominee.jpg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // const Text("Your KYC Verification is in progress",
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //         color: Color.fromRGBO(95, 92, 92, 1),
                //         fontSize: 18,
                //         fontWeight: FontWeight.bold)
                // ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                    'We are veryfying your KYC Details. You can add Nominee once verification is complete.',
                    textAlign: TextAlign.center,
                    ),
                const SizedBox(
                  height: 20,
                ),
                // MaterialButton(
                //   height: 50.0,
                //   minWidth: 300.0,
                //   color: const Color.fromRGBO(0, 92, 187, 1),
                //   textColor: Colors.white,
                //   onPressed: () => {},
                //   child: const Text("Get Support"),
                // )
              ],
            ), 
          ),
        )
      )
    );
  }
}
