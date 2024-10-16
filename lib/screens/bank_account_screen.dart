// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class BankAccountScreen extends StatelessWidget {
//   BankAccountScreen({super.key});
//   final _formKey = GlobalKey<FormState>(); 
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _numController = TextEditingController();
//   final TextEditingController _ifscController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bank Details'),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       "Here are the details ot the bank account linked to your profile on kuberascheme.com",
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w200),
//                     ),
//                   ),
//                   const SizedBox(height: 16), 
//                   TextFormField(
//                     controller: _nameController,
//                     inputFormatters: [
//                       FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
//                     ],
//                     decoration: const InputDecoration(
//                       labelText: 'Account Holder Name',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter account holder name';
//                       }
//                       if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
//                         return 'Name can only contain letters';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                   TextFormField(
//                     controller: _numController,
//                     keyboardType: TextInputType.number, 
//                     inputFormatters: [
//                       FilteringTextInputFormatter.digitsOnly,
//                     ],
//                     decoration: const InputDecoration(
//                       labelText: 'Account Number',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your account number';
//                       }
//                       return null; 
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                   TextFormField(
//                     controller: _ifscController,
//                     decoration: const InputDecoration(
//                       labelText: 'IFSC Code',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your ifsc code';
//                       }
//                       return null; 
//                     },
//                   ),
//                   const SizedBox(height: 24),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(content: Text('Your Bank Details Submitted Successfully')),
//                         );
//                       }
//                     },
//                     child: const Text('Submit'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         )
//       )
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BankAccountScreen extends StatefulWidget {
  const BankAccountScreen({super.key});

  @override
  _BankAccountScreenState createState() => _BankAccountScreenState();
}

class _BankAccountScreenState extends State<BankAccountScreen> {
  final _formKey = GlobalKey<FormState>(); 
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();

  bool _isFormValid = false;

  void _validateForm() {
    setState(() {
      _isFormValid = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  void initState() {
    super.initState();
    
    _nameController.addListener(_validateForm);
    _numController.addListener(_validateForm);
    _ifscController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _numController.dispose();
    _ifscController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Here are the details of the bank account linked to your profile on kuberascheme.com",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(height: 16), 
                  TextFormField(
                    controller: _nameController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Account Holder Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter account holder name';
                      }
                      if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                        return 'Name can only contain letters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _numController,
                    keyboardType: TextInputType.number, 
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Account Number',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your account number';
                      }
                      return null; 
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _ifscController,
                    decoration: const InputDecoration(
                      labelText: 'IFSC Code',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your IFSC code';
                      }
                      return null; 
                    },
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isFormValid 
                        ? () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Your Bank Details Submitted Successfully')),
                              );
                            }
                          }
                        : null, // Disable if form is not valid
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        backgroundColor: _isFormValid
                            ? const Color.fromRGBO(0, 92, 187, 1)
                            : Colors.grey, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: _isFormValid ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}
