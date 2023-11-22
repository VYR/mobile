import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomAlertWidget extends StatelessWidget {
  const CustomAlertWidget(
      {super.key,
      this.title,
      this.content,
      this.onClose,
      this.isLoading = false});
  final String? title;
  final String? content;
  final VoidCallback? onClose;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GFAlert(
      alignment: Alignment.center,
      backgroundColor: Colors.white,
      title: isLoading ? title : '',
      content: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Text((content != null) ? content.toString() : ''),
      type: GFAlertType.rounded,
      bottomBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GFButton(
            onPressed: onClose,
            color: GFColors.LIGHT,
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
