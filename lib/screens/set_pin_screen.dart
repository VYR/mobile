import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SetPinScreen extends StatefulWidget {
  const SetPinScreen({super.key});
  @override
  _SetPinScreenState createState() => _SetPinScreenState();
}

class _SetPinScreenState extends State<SetPinScreen> {
  final List<TextEditingController> pinControllers =
      List.generate(4, (_) => TextEditingController());
  final List<TextEditingController> confirmPinControllers =
      List.generate(4, (_) => TextEditingController());

  void _onChangedPin(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).nextFocus(); // Move to the next field
    }
  }

  void _onSubmit() {
    // Gather the PIN entered by the user
    String pin = pinControllers.map((controller) => controller.text).join();
    String confirmPin =
        confirmPinControllers.map((controller) => controller.text).join();

    if (pin == confirmPin) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PIN set successfully!')),
      );
    } else {
      // Show error message
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
          LengthLimitingTextInputFormatter(1), // Limit to one character
          FilteringTextInputFormatter.digitsOnly, // Only allow digits
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
                // Image at the top
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
                'Please Set 4 digit mobile PIN for Kubera App to securly login into your account. Once set, You can access your account via PIN'),
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
                    onPressed: () => {GoRouter.of(context).go('/main-page')},
                    child: Text('Submit',
                            style: TextStyle(
                                  color: Colors.white, // Change text color to white
                                ),),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color.fromRGBO(0, 92, 187, 1), // Change button background color if needed
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
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





// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class SetPinScreen extends StatelessWidget {
//   const SetPinScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               "assets/icon/icon.png",
//               height: 100,
//               width: 100,
//               alignment: Alignment.topRight,
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "Set Kubera PIN",
//               textAlign: TextAlign.left,
//               style: TextStyle(
//                   color: Color.fromRGBO(95, 92, 92, 1),
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.w800),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//                 'Please Set 4 digit mobile PIN for Kubera App to securly login into your account. Once set, You can access your account via PIN'),
//             const SizedBox(height: 10),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const Text(
//                   'Enter the PIN',
//                   style: TextStyle(
//                       color: Color.fromRGBO(95, 92, 92, 1),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   'Re-enter the PIN',
//                   style: TextStyle(
//                       color: Color.fromRGBO(95, 92, 92, 1),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                     _buildPinBox(context),
//                   ],
//                 ),
//                 const SizedBox(height: 50),
//                 MaterialButton(
//                   height: 50.0,
//                   minWidth: 500.0,
//                   color: const Color.fromRGBO(227, 227, 228, 1),
//                   textColor: Colors.black,
//                   onPressed: () => {GoRouter.of(context).go('/dashboard')},
//                   hoverColor: const Color.fromRGBO(0, 92, 187, 1),
//                   child: const Text("Set PIN"),
//                 )
//               ],
//             ),
//           ],
//         ), //Container
//       ),
//     );
//   }
// }

// Widget _buildPinBox(BuildContext context) {
//   return const SizedBox(
//     width: 50,
//     child: TextField(
//       keyboardType: TextInputType.number,
//       textAlign: TextAlign.center,
//       maxLength: 1,
//       obscureText: true,
//       decoration: InputDecoration(
//         counterText: '',
//         border: OutlineInputBorder(),
//       ),
//     ),
//   );
// }
