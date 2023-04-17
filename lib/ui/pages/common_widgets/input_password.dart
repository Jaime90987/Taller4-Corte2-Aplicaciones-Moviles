import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class InputPassword extends StatefulWidget {
  final TextEditingController passwordController;
  final String? text;
  final bool? disable;
  const InputPassword({
    super.key,
    required this.passwordController,
    this.text,
    this.disable,
  });

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool passToogle = true;

  @override
  Widget build(BuildContext context) {
    widget.passwordController.text =
        widget.text ?? widget.passwordController.text;

    return TextFormField(
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: passToogle,
      readOnly: widget.disable ?? false,
      decoration: InputDecoration(
        labelText: passwordTextLabel,
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
        prefixIcon: const Icon(Icons.lock),
        prefixIconColor: colorInputLabelAndIcon,
        suffixIcon: InkWell(
          onTap: () {
            passToogle = !passToogle;
            setState(() {});
          },
          child: Icon(passToogle ? Icons.visibility : Icons.visibility_off),
        ),
        suffixIconColor: colorInputLabelAndIcon,
      ),
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return requiredFieldText;
        }
        if (value.length < 6) {
          return passwordLeghtText;
        }
        return null;
      },
    );
  }
}
