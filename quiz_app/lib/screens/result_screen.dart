import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.imagesGradent, fit: BoxFit.cover),
          ),
          SafeArea(
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'Your Score :',
                      style: AppTextStyle.medium24(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '$score / $totalQuestions',
                      style:AppTextStyle.medium24(color :const Color.fromARGB(255, 19, 211, 19))
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
