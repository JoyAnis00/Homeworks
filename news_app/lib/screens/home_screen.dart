import 'package:flutter/material.dart';
import 'package:news_app/components/category_list_view.dart';
import 'package:news_app/components/news_list_view_bulider.dart';
import '../components/appbar_title.dart';


class NewsHomeScreen extends StatelessWidget {
  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: NewsCloudTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewsListViewBuilder(category: 'top'),
          ],
        ),
      ),
    );
  }
}

