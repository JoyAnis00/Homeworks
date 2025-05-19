import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_view_bulider.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Replace with your category list or UI
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'News ',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            const Text(
              'Cloud ',
              style: TextStyle(
                fontSize: 23,
                color: Color.fromARGB(255, 255, 97, 6),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(slivers: [NewsListViewBuilder(category: category)]),
        ),
      ),
    );
  }
}
