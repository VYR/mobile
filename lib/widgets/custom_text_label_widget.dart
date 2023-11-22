import 'package:flutter/material.dart';
import 'package:raoproject/enums/shared_enum.dart';

class CustomTextLabelWidget extends StatelessWidget {
  const CustomTextLabelWidget(
      {super.key, required this.text, this.color, this.isBold, this.size});
  final String text;
  final TextLabelColors? color;
  final TextLabelSizes? size;
  final bool? isBold;
  @override
  Widget build(BuildContext context) {
    Color colors = Colors.black;
    FontWeight fontWeight =
        (isBold != null) ? FontWeight.bold : FontWeight.normal;
    double sizes = 10.0;
    if (TextLabelColors.white == color) {
      colors = Colors.white;
    }
    if (TextLabelColors.blue == color) {
      colors = Colors.blue;
    }
    //sizes
    //
    if (TextLabelSizes.small == size) {
      sizes = 40.00;
    }
    if (TextLabelSizes.medium == size) {
      sizes = 50.00;
    }
    if (TextLabelSizes.large == size) {
      sizes = 80.00;
    }
    return Text(
      text,
      style: TextStyle(fontWeight: fontWeight, color: colors, fontSize: sizes),
    );
  }
}
