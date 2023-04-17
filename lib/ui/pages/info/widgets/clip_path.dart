import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login_app/ui/colors.dart';

class ClipPathInfo extends StatelessWidget {
  const ClipPathInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.22,
        color: colorClipPathInfo,
      ),
    );
  }
}
