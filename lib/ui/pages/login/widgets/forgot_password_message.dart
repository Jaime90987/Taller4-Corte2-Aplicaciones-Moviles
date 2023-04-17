import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class ForgotPasswordMessage extends StatelessWidget {
  const ForgotPasswordMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: null,
          child: const Text(forgotPassword,
              style: TextStyle(color: colorForgotPass)),
        ),
      ],
    );
  }
}
