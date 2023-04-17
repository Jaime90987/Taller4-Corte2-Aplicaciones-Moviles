import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';
import 'package:login_app/ui/pages/common_widgets/input_email.dart';
import 'package:login_app/ui/pages/common_widgets/input_password.dart';
import 'package:login_app/ui/pages/login/widgets/clip_path.dart';
import 'package:login_app/ui/pages/login/widgets/forgot_password_message.dart';
import 'package:login_app/ui/pages/login/widgets/send_button.dart';
import 'package:login_app/ui/pages/login/widgets/divider.dart';
import 'package:login_app/ui/pages/login/widgets/social_networks.dart';
import 'package:login_app/ui/pages/login/widgets/footer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToogle = true;
  String country = countryText;
  String phoneNumber = phoneNumberText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const MyClipPathLogin(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Image.asset(loginImage, height: 150),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputEmail(emailController: emailController),
                        const SizedBox(height: 16),
                        InputPassword(passwordController: passwordController),
                        const SizedBox(height: 12),
                        const ForgotPasswordMessage(),
                        const SizedBox(height: 40),
                        SendButton(
                          formKey: _formKey,
                          emailController: emailController,
                          passwordController: passwordController,
                          country: country,
                          phoneNumber: phoneNumber,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07),
                        const MyDivider(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        const SocialNetworks(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        const Footer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
