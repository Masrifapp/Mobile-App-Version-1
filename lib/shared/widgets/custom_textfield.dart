import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? label;
  final String? hintText;
  final Widget? suffixIcon, prefixIcon;
  const CustomTextField({
    Key? key,
    this.label,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: prefixIcon,
          label: label,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}
