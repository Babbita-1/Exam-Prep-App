import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_theme/app_theme.dart';
import 'package:flutter_application_1/view/loginscreen.dart';
import 'package:flutter_application_1/view/onboarding_screen.dart';
import 'package:flutter_application_1/view/registerscreen.dart';

import 'view/dashboardscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/login",
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        routes: {
          "/Onboarding": (context) => const OnboardingScreen(),
          "/login": (context) => const LoginScreen(),
          "/register": (context) => const RegisterScreen(),
          "/dashboard": (context) => const DashboardScreen(),
        });
  }
}
