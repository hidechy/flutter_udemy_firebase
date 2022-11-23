import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    required this.keybordType,
    required this.onChanged,
    required this.controller,
    required this.color,
    required this.borderColor,
    required this.hintText,
  });

  final TextInputType keybordType;
  final void Function(String)? onChanged;
  final TextEditingController controller;
  final Color color;
  final Color borderColor;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: color,
      borderColor: borderColor,
      shadowColor: Colors.purpleAccent,
      child: TextFormField(
        keyboardType: keybordType,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:
              const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
        ),
      ),
    );
  }
}
