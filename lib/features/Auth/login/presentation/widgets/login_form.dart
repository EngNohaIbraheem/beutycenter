import 'package:flutter/material.dart';
import '../../../signup/presentation/widgets/custum_text_field.dart';
import 'login_button.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hint: "Email",
          controller: emailController,
          isPassword: true,
          validator: (value) {
            if (value != passwordController.text) {
              return "Passwords do not match";
            }
            return null;
          },        ),

        const SizedBox(height: 16),

        CustomTextField(
          hint: "Password",
          controller: passwordController,
          isPassword: true,
          validator: (value) {
            if (value != passwordController.text) {
              return "Passwords do not match";
            }
            return null;
          },        ),

        const SizedBox(height: 24),

        SizedBox(
          width: double.infinity,
          child: LoginButton(
            onPressed: () {
              final email = emailController.text;
              final password = passwordController.text;

              // TODO: handle login
              debugPrint("Email: $email");
              debugPrint("Password: $password");
            },
          ),
        ),
      ],
    );
  }
}