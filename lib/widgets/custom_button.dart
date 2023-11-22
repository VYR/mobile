import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final String? text;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GFButton(
        elevation: 0,
        text: "$text",
        blockButton: true,
        shape: GFButtonShape.standard,
        onPressed: onPressed);
  }
}
