import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login_app/ui/colors.dart';

class MyClipPathLogin extends StatelessWidget {
  const MyClipPathLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: const Alignment(0, 1),
      child: ClipPath(
        clipper: RoundedDiagonalPathClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.39,
          color: colorClipPathLogin,
        ),
      ),
    );
  }
}
