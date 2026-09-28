import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  // variabel yang diperlukan
  final String myHint;
  final TextEditingController txtController;
  final Color textColor;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.textColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hint: Text(
          myHint,
          style: TextStyle(color: textColor),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
