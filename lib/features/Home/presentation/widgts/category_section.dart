import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: const [
              CategoryItem(title: "Hair Style", image: "assets/images/hairstyle.png"),
              CategoryItem(title: "Hair Spa", image: "assets/images/hairspa.png"),
              CategoryItem(title: "Shampoo", image: "assets/images/hairstyle.png"),
              CategoryItem(title: "Hair dryer", image: "assets/images/hairspa.png"),
              CategoryItem(title: "Facial", image: "assets/images/hairspa.png"),
              CategoryItem(title: "Makeup", image: "assets/images/hairstyle.png"),
            ],
          ),
        ),
      ],
    );
  }
}