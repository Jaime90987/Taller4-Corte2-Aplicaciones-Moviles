import 'package:flutter/material.dart';
import 'package:login_app/ui/data_arguments.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class SendButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String country;
  final String phoneNumber;
  const SendButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.country,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Navigator.pushNamed(
            context,
            targetPage,
            arguments: DataArguments(
              emailController.text,
              passwordController.text,
              country,
              phoneNumber,
            ),
          );
          emailController.text = "";
          passwordController.text = "";
        }
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(310, 48),
        backgroundColor: colorButton,
        foregroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.blueGrey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      child: const Text(loginText,
          style: TextStyle(
            fontSize: 18,
          )),
    );
  }
}
