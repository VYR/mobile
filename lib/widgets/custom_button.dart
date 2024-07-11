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
        size: GFSize.LARGE,
        textStyle: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 64, 47, 1)),

        shape: GFButtonShape.pills,
        padding: EdgeInsets.symmetric(vertical: 5),
        color: Color.fromRGBO(199, 162, 81, 1),
        onPressed: onPressed);
  }
}
