import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // Contrainer(),
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                child: Text("venky")),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Dashboard"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.login_outlined,
                color: Colors.red,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 100),
            Column(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    "assets/icon/thumb.jpg",
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Your KYC Verification is in progress",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(95, 92, 92, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            const Text(
                ' We will notify you as soon as it is verified. please reach out for support.'),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: 300.0,
              color: const Color.fromRGBO(0, 92, 187, 1),
              textColor: Colors.white,
              onPressed: () => {},
              child: const Text("Get Support"),
            )
          ],
        ), //Container
      ),
    );
  }
}
