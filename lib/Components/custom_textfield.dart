import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  // variabel yang diperlukan
  final String myHint;
  final TextEditingController txtController;
  final Color textColor;
  final bool isNumeric;
  final bool isPassword;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.textColor = Colors.green,
    this.isNumeric = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      keyboardType: isNumeric
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      inputFormatters: isNumeric
          ? [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))]
          : null,
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
