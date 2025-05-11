import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyle.medium18(color: AppColors.primaryColor)
            ),
          ],
        ),
      ),
    );
  }
}
