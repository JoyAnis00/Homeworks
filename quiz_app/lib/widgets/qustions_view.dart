import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/styles/app_textstyle.dart';
import 'package:quiz_app/widgets/options_listview.dart';

class QuestionTextWidget extends StatelessWidget {
  final Question question;
  final void Function(int) onOptionSelected;

  const QuestionTextWidget({super.key, required this.question, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.questionText, style: AppTextStyle.medium24()),
        const SizedBox(height: 20),
        OptionsListview(
          question: question,
          onOptionSelected: onOptionSelected,
        ),
      ],
    );
  }
}
