import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class ChoiceCard extends StatefulWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceCard({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<ChoiceCard> createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard>  {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, 1.00),
            end: Alignment(1.00, 0.17),
            colors: widget.isSelected
                ? [const Color(0xFFB8B2FF), const Color(0xFFC6C2F7)]
                : [AppColors.accentColor, AppColors.accentColor],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Row(
          children: [
            Container(
              width: 22,
              height: 22,
              padding: const EdgeInsets.all(5),
              decoration: ShapeDecoration(
                color: widget.isSelected ? AppColors.primaryColor : AppColors.accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(width: 1, color: AppColors.primaryColor),
                ),
              ),
              child: SvgPicture.asset(Assets.imagesIcon),
            ),
            const SizedBox(width: 16),
            Text(
              widget.label,
              style: AppTextStyle.regular16(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
