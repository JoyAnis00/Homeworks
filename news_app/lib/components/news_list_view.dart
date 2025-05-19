// NewsListView.dart

import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<Article> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(article: articles[index]);
      }),
    );
  }
}
