import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/signup_background.dart';
import '../widgets/signup_body.dart';






class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String routeName = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SignUpBackground(),
          SignUpBody(),
        ],
      ),
    );
  }
}