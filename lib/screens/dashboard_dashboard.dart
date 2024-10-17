import 'package:flutter/material.dart';
import 'package:kubera_scheme/screens/schemes_screens.dart';

class DashboardOneScreen extends StatelessWidget {
  const DashboardOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        "assets/icon/dashboard.jpeg",
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("You are yet to make your first investment",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w900)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Begin investing by exploring the opportunities that are currently available',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 18,
                      )
                ),   
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 50.0,
                  minWidth: 300.0,
                  color: const Color.fromRGBO(0, 92, 187, 1),
                  textColor: Colors.white,
                  onPressed: () => {
                            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchemesScreens()),
                )
                          },
                  child: const Text("Explore Schemes"),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
