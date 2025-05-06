// NewsListView.dart
import 'package:flutter/material.dart';
import 'news_tile.dart'; // تأكدي من المسار

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            imageUrl: 'assets/news_$index.jpg',
            title: 'News Title $index',
            description: 'This is the description of news item number $index.',
            date: '2025-05-07',
          );
        },
        childCount: 10,
      ),
    );
  }
}
