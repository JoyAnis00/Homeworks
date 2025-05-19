import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_view_bulider.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Replace with your category list or UI
    return Scaffold(body: CustomScrollView(slivers: [NewsListViewBuilder(category: category)]));
  }
}
