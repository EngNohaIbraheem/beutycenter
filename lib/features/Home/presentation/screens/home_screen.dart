import 'package:flutter/material.dart';

import '../widgts/Header_home.dart';
import '../widgts/category_section.dart';
import '../widgts/home_button_nav_bar.dart';
import '../widgts/promo_card.dart';
import '../widgts/special_section.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
     static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/image1.png",
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 Overlay (اختياري لتحسين وضوح النص)
          // Positioned.fill(
          //   child: Container(
          //     color: Colors.white.withOpacity(0.85),
          //   ),
          // ),

          /// 🔹 Main Content
          SafeArea(
            child: Column(
              children: [
    HomeHeader(),
             SizedBox(height: 16),
              PromoCard(),     SizedBox(height: 20),
             CategoriesSection(),
             SizedBox(height: 20),
            SpecialistSection(),
           SizedBox(height: 20),
        ],
      ),
    )

    ]
      )
    );

  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   static const String routeName = "HomeScreen";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: const HomeBottomNavBar(),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFFD9A7A7), // وردي فوق
//               Color(0xFFD9A7A7),
//               Color(0xFFE9E6E6), // رمادي تحت
//               Color(0xFFE9E6E6),
//             ],
//             stops: [0.0, 0.35, 0.36, 1.0], // 👈 السر هنا
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: const [
//                 HomeHeader(),
//                 SizedBox(height: 16),
//                 PromoCard(),
//                 SizedBox(height: 20),
//                 CategoriesSection(),
//                 SizedBox(height: 20),
//                 SpecialistSection(),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }