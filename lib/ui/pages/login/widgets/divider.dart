import 'package:flutter/material.dart';
import 'package:login_app/ui/strings.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: .4,
          ),
        ),
        const SizedBox(width: 3),
        const Text(
          orLoginWith,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: .4,
          ),
        ),
      ],
    );
  }
}
