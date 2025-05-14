import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/back_button.dart';

import 'package:quiz_app/widgets/next_button.dart';

class ButtonsSection extends StatelessWidget {
final VoidCallback onBack;
final VoidCallback onNext;
final bool isSelected;
final bool isLastQuestion;
  const ButtonsSection({super.key, required this.onBack,required this.onNext, required this.isSelected,required this.isLastQuestion});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton1(onPressed: onBack,),
        Expanded(child: SizedBox(width: 91)),
        NextButton(onPressed:onNext, isSelected:isSelected,
        isLastQuestion: isLastQuestion
        ),
      ],
    );
  }
}

