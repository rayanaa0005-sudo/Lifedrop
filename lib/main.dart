import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const LifeDropApp());
}

class LifeDropApp extends StatelessWidget {
  const LifeDropApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeDrop',
      theme: ThemeData(
        primaryColor: const Color(0xff9f2026),
      ),
      home: const HomePage(),

      // Needed for SIGN OUT navigation
      routes: {
        "/login": (context) => const Placeholder(),
        // Replace Placeholder() with your friend's LoginPage later
      },
    );
  }
}