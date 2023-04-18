import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';

class InputGeneric extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Widget prefixIcon;
  const InputGeneric({
    super.key,
    required this.controller,
    required this.labelText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      readOnly: true,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: colorInputLabelAndIcon),
        filled: true,
        fillColor: colorInputFill,
        helperText: "",
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorInputBorder),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorInputBorderFocus, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        prefixIcon: prefixIcon,
        prefixIconColor: colorInputLabelAndIcon,
      ),
    );
  }
}
