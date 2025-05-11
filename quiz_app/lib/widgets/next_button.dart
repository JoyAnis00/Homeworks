import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;

  const NextButton({
    super.key,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondaryColor : Colors.transparent,
          border: Border.all(
            width: 1,
            color: const Color(0xFF8D83FF), // SECONDARY-VIOLET
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Next', style: AppTextStyle.regular16()),
            const SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, size: 19),
          ],
        ),
      ),
    );
  }
}
