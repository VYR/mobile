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
      backgroundColor: const Color.fromRGBO(40, 28, 9, 1),
      title: isLoading ? title : '',
      content: isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 3,))
          : Text(((content != null) ? content.toString() : ''), style: const TextStyle(color: Colors.white),),
      type: GFAlertType.rounded,
      titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),

      bottomBar: !isLoading? Row(
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
      ): const Text(''),
    );
  }
}
