import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
 final CategoryModel categoryModel;

  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:5),
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                categoryModel.categoryimage,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 2, 2, 2).withAlpha(70), // بهتان
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Center(
              child: Text(
                categoryModel.name,
                style: TextStyle(
                  fontSize: 26,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
