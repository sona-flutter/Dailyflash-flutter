import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final bool obscureText;

  const InputField({
    required this.controller,
    required this.hintText,
    this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        filled: true,
      ),
    );
  }
}
