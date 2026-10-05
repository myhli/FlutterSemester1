import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String myLabel;
  final ValueChanged<String?> onChanged;
  final Color textColor;

  const CustomDropdown({
    super.key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.myLabel = "Pilih",
    this.textColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: selectedValue,
      style: TextStyle(color: textColor, fontSize: 16),
      decoration: InputDecoration(
        labelText: myLabel,
        labelStyle: TextStyle(color: textColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: const TextStyle(color: Colors.black87),
          ),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
