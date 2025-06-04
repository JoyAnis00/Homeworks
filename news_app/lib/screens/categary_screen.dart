import 'package:flutter/material.dart';
import 'package:news_app/components/appbar_title.dart';
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
        title: NewsCloudTitle()
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
