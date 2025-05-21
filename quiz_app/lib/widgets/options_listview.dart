import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';

import 'package:quiz_app/widgets/option_card.dart';

class OptionsListview extends StatefulWidget {
  const OptionsListview({
    super.key,
    required this.question,
    required this.onOptionSelected,
  });

  final Question question;
  final Function(int) onOptionSelected;

  @override
  State<OptionsListview> createState() => _OptionsListviewState();
}

class _OptionsListviewState extends State<OptionsListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 30),
      itemCount: widget.question.options.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ChoiceCard(
            label: widget.question.options[index],
            isSelected: widget.question.selectedIndex == index,
            onTap: () {
              setState(() {
                widget.question.selectedIndex = index;
              });
              widget.onOptionSelected(index);
             
            },
          ),
        );
      },
    );
  }
}
