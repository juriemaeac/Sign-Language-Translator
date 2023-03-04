import 'package:asltranslator/home_screen.dart';
import 'package:asltranslator/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CADATE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
