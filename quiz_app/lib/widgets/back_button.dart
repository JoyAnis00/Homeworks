import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class BackButton1 extends StatelessWidget {
  const BackButton1({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFF8D83FF), // SECONDARY-VIOLET
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios, size: 19),
            const SizedBox(width: 8),
            Text('Back', style: AppTextStyle.regular16()),
          ],
        ),
      ),
    );
  }
}
