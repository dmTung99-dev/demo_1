import 'package:demo_1/view/auth/setting_view.dart';
import 'package:demo_1/view/home/home_view.dart';
import 'package:demo_1/view/intro/intro_view.dart';
import 'package:demo_1/view/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/setting': (context) => const SettingScreen(),
        '/intro': (context) => const IntroScreen(),
      }
    );
  }
}
