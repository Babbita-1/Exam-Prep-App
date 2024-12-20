import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_theme/app_theme.dart';
import 'package:flutter_application_1/view/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login and Register',
        theme: getApplicationTheme(),
        home: const OnboardingScreen());
  }
}
