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

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
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
                    onPressed: () => {GoRouter.of(context).go('/set-pin')},    
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






// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_router/go_router.dart';

// class EnterOtpScreen extends StatelessWidget {
//   const EnterOtpScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Center(
//                 child: Image.asset(
//                   "assets/icon/icon.png",
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//             ],
//           ),
//           const Text(
//             "Enter the OTP",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: Color.fromRGBO(0, 92, 187, 1),
//                 fontSize: 25.0,
//                 fontWeight: FontWeight.w900),
//           ),
//           const Text(
//             "A 6 digit OTP has been sent to you at",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: Color.fromRGBO(0, 0, 0, 1),
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.w900),
//           ),
//           const Text(
//             "8688196521 ",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: Color.fromRGBO(0, 0, 0, 1),
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.w900),
//           ),
//           const Text(
//             "abc***@gmail.com",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: Color.fromRGBO(0, 0, 0, 1),
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Form(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineMedium,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineSmall,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineSmall,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineSmall,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineSmall,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextFormField(
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     style: Theme.of(context).textTheme.headlineSmall,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(1),
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Text(
//             "Resend OTP",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: Color.fromRGBO(0, 92, 187, 1),
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           MaterialButton(
//             height: 50.0,
//             minWidth: 330.0,
//             color: const Color.fromRGBO(227, 227, 228, 1),
//             textColor: Colors.black,
//             onPressed: () => {GoRouter.of(context).go('/set-pin')},
//             hoverColor: const Color.fromRGBO(0, 92, 187, 1),
//             child: const Text("Continue"),
//           )
//         ],
//       ),
//     );
//   }
// }
