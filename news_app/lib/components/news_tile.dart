import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  final Article article;

  const NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child:
              article.urlToImage != null
                  ? Image.network(
                    article.urlToImage!,
    
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                  : Image.network(
                    'https://i.pinimg.com/1200x/dd/b2/63/ddb2635419de43448e1f2923dda01d93.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
        ),
        Text(
          article.title ?? '',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        // News description
        Text(
          article.description ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
    
        // Date/time
      ],
    );
  }
}
