import 'package:flutter/material.dart';
import 'package:news_app/styles/app_textstyle.dart';

class NewsCloudTitle extends StatelessWidget {
  const NewsCloudTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
         Text(
          'News ',
          style: AppTextStyle.headline1(),
        ),
         Text(
          'Cloud ',
          style: AppTextStyle.headline1(color: const Color.fromARGB(255, 255, 97, 6)),
        ),
      ],
    );
  }
}