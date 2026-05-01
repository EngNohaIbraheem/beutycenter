import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  const SignUpBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Image
        Positioned.fill(
          child: Image.asset(
            "assets/images/image1.png",
            fit: BoxFit.cover,
          ),
        ),

        /// Overlay
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.35),
          ),
        ),
      ],
    );
  }
}