import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final VoidCallback onPressed;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.myText,
    required this.onPressed,
    this.textColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        myText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
