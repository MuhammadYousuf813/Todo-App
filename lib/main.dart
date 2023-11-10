import 'package:flutter/material.dart';
import 'package:todo_app/home/home_screen.dart';
import 'account/login_screen.dart';
import 'account/register_screen.dart';
import 'welcome_screen.dart';
import 'onboarding/onboardings_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => splashscreen(),
        "/onboarding": (context) => OnboardingScreen(),
        "/welcome": (context) => welcomescreen(),
        '/login': (context) => loginscreen(),
        '/register': (context) => registerscreen(),
        "/home": (context) => homescreen(),
      },
      debugShowCheckedModeBanner: false,
      // initialRoute: "/splash",
      // routes: {
      //   "/splash": (context) => splashscreen(),
      //   "/onboarding": (context) => OnboardingScreen(),
      //   "/home": (context) => welcomescreen(),
      // }
    );
  }
}
