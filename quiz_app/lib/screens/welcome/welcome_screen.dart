import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_textstyle.dart';
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
      backgroundColor: AppColors.primaryColor,

      body: SafeArea(
        child: Stack(
          children: [
             Image.asset(Assets.imagesGradent),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text('Good Morning', style: AppTextStyle.regular16()),
                  SizedBox(height: 8),
                  Text('New topic is waiting', style: AppTextStyle.medium24()),
                 Spacer(flex: 15,),
                  CustomButton(text: 'Start Quiz', onPressed: () {
                    setState(() {
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen() ,
                      ),
                      );
                    });
                  }),
                 Spacer(flex: 1,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
