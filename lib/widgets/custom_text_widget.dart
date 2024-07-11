import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:getwidget/getwidget.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.label = '',
    this.hint = '',
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
    required this.textController,
  });
  final String label;
  final String hint;
  final dynamic prefixIcon;
  final dynamic keyboardType;
  final bool obscureText;
  final dynamic inputFormatters;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters:inputFormatters,
      style: TextStyle(color: Colors.white),
      controller: textController,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Color.fromRGBO(209, 179, 24, 1)),
          iconColor: Colors.white,
          prefixIconColor: Colors.white,
          focusColor: Colors.white,
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Color.fromRGBO(209, 179, 24, 1))),
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: (prefixIcon != null) ? prefixIcon : null,
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: hint),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
