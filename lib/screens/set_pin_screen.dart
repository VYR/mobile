import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SetPinScreen extends StatefulWidget {
  const SetPinScreen({super.key});
  @override
  State<SetPinScreen> createState() => _SetPinScreenState();
}

class _SetPinScreenState extends State<SetPinScreen> {
  final List<TextEditingController> pinControllers =
      List.generate(4, (_) => TextEditingController());
  final List<TextEditingController> confirmPinControllers =
      List.generate(4, (_) => TextEditingController());
  bool isButtonEnabled = false;

  void _onChangedPin(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).nextFocus(); // Move to the next field
    }
    _checkPinCompletion();  // Add this line
  }

  void _checkPinCompletion() {
    bool allPinFieldsFilled = pinControllers.every((controller) => controller.text.isNotEmpty);
    bool allConfirmPinFieldsFilled = confirmPinControllers.every((controller) => controller.text.isNotEmpty);

    setState(() {
      isButtonEnabled = allPinFieldsFilled && allConfirmPinFieldsFilled;
    });
  }

  void _onSubmit() {
    String pin = pinControllers.map((controller) => controller.text).join();
    String confirmPin =
        confirmPinControllers.map((controller) => controller.text).join();

    if (pin == confirmPin) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PIN set successfully!')),
      );      
      GoRouter.of(context).go('/main-page');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PINs do not match!')),
      );
    }
  }

  Widget _buildPinField(int index, List<TextEditingController> controllers) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controllers[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1), 
          FilteringTextInputFormatter.digitsOnly, 
        ],
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value) => _onChangedPin(value, index),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose all controllers
    for (var controller in pinControllers) {
      controller.dispose();
    }
    for (var controller in confirmPinControllers) {
      controller.dispose();
    }
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
                Image.asset(
                      "assets/icon/icon.png",
                      height: 100,
                      width: 100,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Set Kubera PIN',
                  style: TextStyle(
                        color: Color.fromRGBO(0, 92, 187, 1),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 15),
                const Text(
                'Please Set 4 digit mobile PIN for Kubera App to securely login into your account. Once set, You can access your account via PIN'),
                const SizedBox(height: 15),
                const Text(
                  'Enter the PIN',
                  style: TextStyle(
                      color: Color.fromRGBO(95, 92, 92, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) => _buildPinField(index, pinControllers)),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Re-enter your PIN',
                  style: TextStyle(
                      color: Color.fromRGBO(95, 92, 92, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) => _buildPinField(index, confirmPinControllers)),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isButtonEnabled ? _onSubmit : null,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color.fromRGBO(0, 92, 187, 1), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Submit',
                            style: TextStyle(
                                  color: Colors.white, 
                                ),),
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