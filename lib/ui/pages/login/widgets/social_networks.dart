import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/ui/colors.dart';
import 'package:login_app/ui/strings.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialNetworkTemplate(socialImage1, socialText1, context),
        const SizedBox(width: 20),
        _socialNetworkTemplate(socialImage2, socialText2, context),
        const SizedBox(width: 20),
        _socialNetworkTemplate(socialImage3, socialText3, context),
      ],
    );
  }

  ElevatedButton _socialNetworkTemplate(
      String asset, String label, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(label, style: const TextStyle(color: Colors.black)),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.white,
            duration: const Duration(seconds: 1),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: colorSocial,
        padding: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: SvgPicture.asset(
        asset,
        height: MediaQuery.of(context).size.height * 0.06,
        semanticsLabel: label,
      ),
    );
  }
}
