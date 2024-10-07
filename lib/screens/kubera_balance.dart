import 'package:flutter/material.dart';

class KuberaBalanceScreen extends StatefulWidget {
  const KuberaBalanceScreen({super.key});

  @override
  _KuberaBalanceScreenState createState() => _KuberaBalanceScreenState();
}

class _KuberaBalanceScreenState extends State<KuberaBalanceScreen> {
  String password = '';
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 400),
              const Expanded(
                child: Text(
                  'Kubera Balance:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(width: 8), 
              Expanded(
                flex: 1,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: _isObscured, 
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured; 
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
