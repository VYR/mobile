import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class EnterOtpScreen extends StatefulWidget {
  final String mobileNumber;
  const EnterOtpScreen({super.key, required this.mobileNumber});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());
  bool isButtonEnabled = false;

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _checkOtpCompletion() {
  // Check if all OTP fields are filled
  bool allFieldsFilled = otpControllers.every((controller) => controller.text.isNotEmpty);
  setState(() {
    isButtonEnabled = allFieldsFilled;
  });
}

  Widget _buildOTPField(int index) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: otpControllers[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 5) {
            FocusScope.of(context).nextFocus();
          }
          _checkOtpCompletion(); 
        },
      ),
    );
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
                Image.asset(
                      "assets/icon/icon.png",
                      height: 100,
                      width: 100,
                ),
                const SizedBox(height: 50),
                const Text(
                    "Enter OTP",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 92, 187, 1),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 10),
                Text(
                  'A 6 digit OTP has been sent to you at ${widget.mobileNumber}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900)
                ),
                const SizedBox(height: 10),
                const Text(
                    "abc***@gmail.com",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900),
                  ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) => _buildOTPField(index)),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend OTP',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Continue button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isButtonEnabled ? () => {GoRouter.of(context).go('/set-pin')} : null,    
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color.fromRGBO(0, 92, 187, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white, // Change text color to white
                                ),
                                ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}