import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _mobileController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _mobileController.addListener(() {
      setState(() {
        _isButtonEnabled = _mobileController.text.length == 10;
      });
    });
  }

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icon/icon.png",
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                const SizedBox(height: 60), 
                const Text(
                  "Hey, Welcome Back!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 92, 187, 1),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    maxLength: 10, 
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly, 
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Enter Mobile Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                      counterText: '', 
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: SizedBox(
                      width: double.infinity, // Full width button
                      child: ElevatedButton(
                        onPressed: _isButtonEnabled
                            ? () => {
                                GoRouter.of(context).go('/otp')
                              }
                            : null,
                        child: Text(
                          'Get OTP',
                          style: TextStyle(
                            color: _isButtonEnabled ? Colors.white : Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: _isButtonEnabled
                              ? const Color.fromRGBO(0, 92, 187, 1)
                              : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), 
                          ),
                        ),
                      ),
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
