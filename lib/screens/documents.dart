import 'package:flutter/material.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});
  void _handleLinkClick(String item) {
    // print('Clicked on: $item');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Documents',
              style: TextStyle(
                    color: Color.fromRGBO(38, 36, 123, 1),
                    fontWeight: FontWeight.w700,fontSize: 16
                  ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _handleLinkClick('Assignment Agreement'),
              child: const Row(
                children: [
                  Icon(Icons.description, color: Color.fromRGBO(0, 23, 255, 1)),
                  SizedBox(width: 8),
                  Text(
                    'Assignment Agreement',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(85, 26, 139, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _handleLinkClick('Product Note'),
              child: const Row(
                children: [
                  Icon(Icons.description, color: Color.fromRGBO(0, 23, 255, 1)),
                  SizedBox(width: 8),
                  Text(
                    'Product Agreement',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(85, 26, 139, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Could not find what you were looking for?',
              style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16
                  ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _handleLinkClick('Call Us'),
              child: const Row(
                children: [
                  Icon(Icons.phone, color: Color.fromRGBO(0, 23, 255, 1)),
                  SizedBox(width: 8),
                  Text('Call Us:',
                    style:TextStyle(
                      fontSize: 14,
                    )
                  ),
                  Text(
                    '+91 83743 XXXXX',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(85, 26, 139, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _handleLinkClick('Mail Us'),
              child: const Row(
                children: [
                  Icon(Icons.email, color: Color.fromRGBO(0, 23, 255, 1)),
                  SizedBox(width: 8),
                  Text('Mail Us:',
                    style:TextStyle(
                      fontSize: 14,
                    )
                  ),
                  Text(
                    'viindhyabullion@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(85, 26, 139, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      )));
  }
}
