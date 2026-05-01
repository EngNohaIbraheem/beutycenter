import 'package:flutter/material.dart';

import '../core/config/router/app_router.dart';
import 'features/Auth/login/presentation/screens/login_screen.dart';
import 'features/Auth/signup/presentation/screens/sidnup_screen.dart';
import 'features/Home/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // print(CacheHelper.cachedToken);
    return MaterialApp(
      title: 'Saloon ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute:HomeScreen.routeName,

    );
  }
}
