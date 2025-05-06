import 'package:flutter/material.dart';
import 'package:languagelearning_app/models/familymembers_list.dart';
import '../models/lesson_model.dart';
import '../widgets/custom_card.dart';


class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});
  final List<ItemModel> item = familyMembers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 221, 205),
      appBar: AppBar(
        backgroundColor: const Color(0xFF363636),
        title: const Text(
          'Family Members',
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
            color: const Color(0xFF916342),
          );
        },
      ),
    );
  }
}
