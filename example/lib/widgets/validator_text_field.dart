import 'package:flutter/material.dart';

class ValidatorTextField extends StatelessWidget {
  const ValidatorTextField({
    super.key,
    required this.label,
    required this.helper,
    required this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.prefixIcon,
  });

  final String label;
  final String helper;
  final String? Function(String?) validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          helperText: helper,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
