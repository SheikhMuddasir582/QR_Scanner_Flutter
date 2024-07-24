import 'package:flutter/material.dart';

class QrButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  QrButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
