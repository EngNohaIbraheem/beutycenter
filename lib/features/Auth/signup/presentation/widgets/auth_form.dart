import 'package:flutter/material.dart';
import 'package:saloon/features/Auth/signup/presentation/widgets/primary_button.dart';

import 'custum_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      /// 🔥 Replace with API / Cubit later
      debugPrint("Name: $name");
      debugPrint("Email: $email");
      debugPrint("Password: $password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          /// Name
          CustomTextField(
            hint: "Full Name",
            controller: nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Name is required";
              }
              return null;
            },
          ),

          /// Email
          CustomTextField(
            hint: "Email",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email is required";
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return "Enter valid email";
              }
              return null;
            },
          ),

          /// Password
          CustomTextField(
            hint: "Password",
            controller: passwordController,
            isPassword: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              if (value.length < 6) {
                return "Min 6 characters";
              }
              return null;
            },
          ),

          /// Confirm Password
          CustomTextField(
            hint: "Confirm Password",
            controller: confirmPasswordController,
            isPassword: true,
            validator: (value) {
              if (value != passwordController.text) {
                return "Passwords do not match";
              }
              return null;
            },
          ),

          const SizedBox(height: 20),

          /// Button
          PrimaryButton(
            title: "Sign-up",
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}