import 'package:flutter/material.dart';
import '../models/lesson_model.dart';
import '../models/number_list.dart';
import '../widgets/custom_card.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});
  final List<ItemModel> item = numbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 221, 205),
      appBar: AppBar(
        backgroundColor: const Color(0xFF363636),
        title: const Text(
          'Numbers',
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
          return CustomCard(
            item: item[index],
            color: const Color(0xFF6a3c2f),
          );
        },
      ),
    );
  }
}
