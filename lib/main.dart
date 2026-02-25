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

      routes: {
        "/login": (context) => const Placeholder(),
      },
    );
  }
}