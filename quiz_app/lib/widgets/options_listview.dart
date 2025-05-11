import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/styles/app_textstyle.dart';
import 'package:quiz_app/widgets/choise_card.dart';

class OptionsListview extends StatefulWidget {
  const OptionsListview({
    super.key,
    required this.question,
    required this.onOptionSelected,
  });

  final Question question;
  final void Function() onOptionSelected;

  @override
  State<OptionsListview> createState() => _OptionsListviewState();
}

class _OptionsListviewState extends State<OptionsListview> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 30),
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 26),
          child: Text(
            widget.question.questionText,
            style: AppTextStyle.medium24(),
          ),
        ),
        const SizedBox(height: 32),
    
        for (int i = 0; i < widget.question.options.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ChoiceCard(label: widget.question.options[i],
             isSelected: selectedIndex == i,
             onTap: () {
              setState(() {
                selectedIndex = i;
              });
              widget.onOptionSelected();
            },
            ),
          ),
      ],
    );
  }
}