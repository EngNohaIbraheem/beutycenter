import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_texts_styles.dart';

class AuthTabs extends StatelessWidget {
  const AuthTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _tab("Login", false),
        const SizedBox(width: 10),
        _tab("Sign-up", true),
      ],
    );
  }

  Widget _tab(String title, bool active) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: active ? AppColors.primary : AppColors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: active
                ? const TextStyle(color: Colors.white)
                : AppTextStyles.tab,
          ),
        ),
      ),
    );
  }
}