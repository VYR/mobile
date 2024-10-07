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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 400),
              const Expanded(
                child: Text(
                  'Kubera Balance:',
                  style: TextStyle(
                        color: Color.fromRGBO(95, 92, 92, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w900)
                ),
              ),
              const SizedBox(width: 8), 
              Expanded(
                flex: 2,
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
