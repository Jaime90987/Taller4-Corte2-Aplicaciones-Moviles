import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class InputEmail extends StatelessWidget {
  final TextEditingController emailController;
  final String? text;
  final bool? disable;
  const InputEmail({
    super.key,
    required this.emailController,
    this.text,
    this.disable,
  });

  @override
  Widget build(BuildContext context) {
    emailController.text = text ?? emailController.text;

    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      readOnly: disable ?? false,
      decoration: const InputDecoration(
        labelText: emailTextLabel,
        labelStyle: TextStyle(color: colorInputLabelAndIcon),
        filled: true,
        fillColor: colorInputFill,
        helperText: "",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorInputBorder),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorInputBorderFocus, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        prefixIcon: Icon(Icons.email),
        prefixIconColor: colorInputLabelAndIcon,
      ),
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return requiredFieldText;
        }
        if (!RegExp(regularExpression).hasMatch(value)) {
          return validateEmailText;
        }
        return null;
      },
    );
  }
}
