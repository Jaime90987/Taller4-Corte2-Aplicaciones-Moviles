import 'package:flutter/material.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';
import 'package:login_app/ui/data_arguments.dart';
import 'package:login_app/ui/pages/common_widgets/input_email.dart';
import 'package:login_app/ui/pages/common_widgets/input_password.dart';
import 'package:login_app/ui/pages/info/widgets/clip_path.dart';
import 'package:login_app/ui/pages/info/widgets/input_generic.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as DataArguments;
    final emailController = TextEditingController(text: arguments.email);
    final passwordController = TextEditingController(text: arguments.password);
    final countryController = TextEditingController(text: arguments.country);
    final phoneNumberController =
        TextEditingController(text: arguments.phoneNumber);

    return Scaffold(
      appBar: AppBar(
        title: const Text(profileText),
        centerTitle: true,
        backgroundColor: colorClipPathInfo,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const ClipPathInfo(),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(profileImage, height: 128),
                    ),
                    const SizedBox(height: 30),
                    InputEmail(
                      emailController: emailController,
                      disable: true,
                    ),
                    InputPassword(
                      passwordController: passwordController,
                      disable: true,
                    ),
                    InputGeneric(
                      controller: countryController,
                      labelText: countryTextLabel,
                      prefixIcon: const Icon(Icons.flag),
                    ),
                    InputGeneric(
                      controller: phoneNumberController,
                      labelText: phoneNumberTextLabel,
                      prefixIcon: const Icon(Icons.phone),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
