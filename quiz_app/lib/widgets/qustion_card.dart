// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class QuestionCard extends StatelessWidget {
  final String questionText;
  final String questionimage;
  const QuestionCard({
    super.key,
    required this.questionText,
    required this.questionimage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
    
      decoration: ShapeDecoration(
        color: AppColors.secondaryColor, // SECONDARY-VIOLET
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFB8B2FF), // OUTLINE-VIOLET
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(questionimage),
          SizedBox(width: 6),
          Text(questionText, style: AppTextStyle.medium18()),
        ],
      ),
    );
  }
}
