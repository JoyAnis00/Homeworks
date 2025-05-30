import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome_screen.dart';

// Entry point of the Quiz App
// This is where the app starts executing
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: WelcomeScreen(),
    );
  }
}

