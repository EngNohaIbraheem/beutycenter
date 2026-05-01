import 'package:flutter/material.dart';
import 'package:saloon/features/Auth/signup/presentation/widgets/remeber_me.dart';
import 'auth_controller.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// Back Button
          _backButton(context),

          const Spacer(),

          /// Card
          const AuthContainer(),

          const SizedBox(height: 20),

          /// Remember Me
          const RememberMe(),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}