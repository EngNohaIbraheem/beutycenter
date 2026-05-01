import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class SpecialistCard extends StatelessWidget {
  final String name;
  final String image;

  const SpecialistCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
         BoxShadow(color: AppColors.shadow, blurRadius: 4),
        ]
        // borderRadius: BorderRadiusRadius.circular(14),
        // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(height: 6),
          Text(name),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.red, size: 16),
              Icon(Icons.star, color: Colors.red, size: 16),
              Icon(Icons.star_border, size: 16),
            ],
          )
        ],
      ),
    );
  }
}