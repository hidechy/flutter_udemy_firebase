import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
    required this.controller,
    required this.obscureText,
    required this.toggleIsObscureText,
    required this.color,
    required this.borderColor,
    required this.shadowColor,
  });

  final void Function(String)? onChanged;
  final TextEditingController controller;
  final bool obscureText;
  final void Function()? toggleIsObscureText;
  final Color color;
  final Color borderColor;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: color,
      borderColor: borderColor,
      shadowColor: Colors.purpleAccent,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: 'enter password',
          contentPadding:
              const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
          suffix: InkWell(
            onTap: toggleIsObscureText,
            child: obscureText
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}
