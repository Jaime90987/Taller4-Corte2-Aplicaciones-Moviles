import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(dontHaveAnAccountYet, style: TextStyle(color: Colors.grey)),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: null,
          child: const Text(
            registerHere,
            style: TextStyle(
              color: colorRegister,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
