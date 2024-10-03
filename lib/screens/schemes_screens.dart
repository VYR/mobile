import 'package:flutter/material.dart';

class SchemesScreens extends StatelessWidget {
  const SchemesScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          const Text(
            "Your KYC verification is in progress",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(42, 38, 38, 1),
                fontSize: 20.0,
                fontWeight: FontWeight.w900),
          ),
          const Text(
            "We Will notify you as soon as it is verified. please reach out for support",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(42, 38, 38, 1),
                fontSize: 15.0,
                fontWeight: FontWeight.w900),
          ),
          MaterialButton(
            height: 40.0,
            minWidth: 100.0,
            color: const Color.fromRGBO(0, 92, 187, 1),
            textColor: Colors.white,
            onPressed: () => {},
            child: const Text("Get Support"),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 40.0,
            minWidth: 300.0,
            color: const Color.fromRGBO(0, 92, 187, 1),
            textColor: Colors.white,
            onPressed: () => {},
            child: const Text("Kubera Scheme"),
          ),
          const Text(
            "Balance risk with insurance protection",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(42, 38, 38, 1),
                fontSize: 15.0,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Safeguard your investment with insurance protection using Trade Credit Insurance",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(42, 38, 38, 1),
                fontSize: 15.0,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: const Text(
              "Invoice Discounting",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: const Text(
              "Multiple Sectors",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: const Text(
              "Escrow controlled",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: const Text(
              "Secured",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    )
      )
    );
  }
}
