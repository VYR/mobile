import 'package:flutter/material.dart';
//import 'package:getwidget/getwidget.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.label = '',
    this.hint = '',
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.textController,
  });
  final String label;
  final String hint;
  final dynamic prefixIcon;
  final dynamic keyboardType;
  final bool obscureText;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
          prefixIcon: (prefixIcon != null) ? prefixIcon : null,
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: hint),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
