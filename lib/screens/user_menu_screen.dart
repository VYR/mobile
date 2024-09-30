import 'package:flutter/material.dart';

class UserMenuScreen extends StatelessWidget {
  const UserMenuScreen({super.key});
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
    );
  }
}
