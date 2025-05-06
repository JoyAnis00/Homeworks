import 'package:flutter/material.dart';
import 'package:languagelearning_app/screens/famembers_screen.dart';
import 'package:languagelearning_app/widgets/category_section.dart';

import 'numbers_screen.dart';
import 'colors_screen.dart';
import 'phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 221, 205),
      appBar: AppBar(
        backgroundColor: const Color(0xFF363636),
        title: const Text(
          'Toku App',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CategorySection(
              title: 'Nembers',
              color: const Color(0xFF6a3c2f),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumbersScreen(),
                  ),
                );
              }),
          CategorySection(
              title: 'Family Members',
              color: const Color(0xFF916342),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FamilyMembersScreen(),
                  ),
                );
              }),
          CategorySection(
              title: 'Phrases', color: const Color(0xFFb0876b), onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhrasesScreen(),
                  ),
                );
              }),
          CategorySection(
              title: 'Colors',
              color: const Color(0xFFdaa883),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColorsScreen(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

