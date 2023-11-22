import 'package:flutter/material.dart';

class CustomLeftRightWidget extends StatelessWidget {
  const CustomLeftRightWidget(
      {super.key, required this.leftWidget, required this.rightWidget});
  final Widget leftWidget;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[leftWidget, rightWidget],
    );
  }
}
