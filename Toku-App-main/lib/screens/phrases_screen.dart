import 'package:flutter/material.dart';
import 'package:languagelearning_app/widgets/phrases_section.dart';
import '../models/lesson_model.dart';
import '../models/phrases_list.dart';


class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  final List<PhrasesModel> item = phrases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 221, 205),
      appBar: AppBar(
        backgroundColor: const Color(0xFF363636),
        title: const Text(
          'Phrases',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return PhrasesSection(
            phrase: item[index],
            color: const Color(0xFFb0876b),
          );
        },
      ),
    );
  }
}
