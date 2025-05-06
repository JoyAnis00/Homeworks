import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  const CategorySection({super.key, required this.title, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),
    );
  }
}
