import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/styles/app_textstyle.dart';
import 'package:quiz_app/widgets/choise_card.dart';

class OptionsListview extends StatefulWidget {
  const OptionsListview({
    super.key,
    required this.question,
    required this.onOptionSelected,
    required this.selectedIndex,
  });

  final Question question;
  final void Function(int) onOptionSelected;
  final int? selectedIndex;

  @override
  State<OptionsListview> createState() => _OptionsListviewState();
}

class _OptionsListviewState extends State<OptionsListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 30),
      itemCount: widget.question.options.length + 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(right: 26),
            child: Text(
              widget.question.questionText,
              style: AppTextStyle.medium24(),
            ),
          );
        } else if (index == 1) {
          return const SizedBox(height: 32);
        } else {
          final optionIndex = index - 2;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ChoiceCard(
              label: widget.question.options[optionIndex],
              isSelected: widget.selectedIndex == optionIndex,
              onTap: () {
                widget.onOptionSelected(optionIndex);
              },
            ),
          );
        }
      },
    );
  }
}