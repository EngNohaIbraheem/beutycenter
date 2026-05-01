import 'package:flutter/material.dart';
import 'package:saloon/features/Home/presentation/widgts/special_card.dart';

class SpecialistSection extends StatelessWidget {
  const SpecialistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Hair Specialist",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: const [
              SpecialistCard(name: "Doe John", image: "assets/images/john.png"),
              SpecialistCard(name: "Lucy", image: "assets/images/image2.png"),
              SpecialistCard(name: "Lili", image: "assets/images/image2.png"),
            ],
          ),
        )
      ],
    );
  }
}