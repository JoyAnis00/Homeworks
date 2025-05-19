

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_view.dart';
import 'package:news_app/models/articles_model.dart';

import 'package:news_app/services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  late Future<List<Article>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews( widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<Article>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data !);
        }else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const Center(child: Text("No news available")),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}

