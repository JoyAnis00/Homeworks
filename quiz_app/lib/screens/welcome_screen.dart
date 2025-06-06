import 'package:flutter/material.dart';

import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';
import 'package:quiz_app/widgets/background.dart';
import 'package:quiz_app/widgets/custome_bottun.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: BackgroundWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text('Good morning', style: AppTextStyle.medium16()),
              const SizedBox(height: 8),
              Text('New topic is waiting', style: AppTextStyle.medium24()),
              const Spacer(flex: 15),
              CustomButton(
                text: 'Start Quiz',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                },
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
