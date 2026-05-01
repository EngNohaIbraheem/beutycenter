import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Checkbox(value: true, onChanged: null),
        Text("Remember Me?"),
      ],
    );
  }
}