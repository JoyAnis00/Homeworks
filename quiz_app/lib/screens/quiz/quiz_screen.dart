import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/widgets/buttons_section.dart';
import 'package:quiz_app/widgets/options_listview.dart';
import 'package:quiz_app/widgets/qustion_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Question question;
  int currentQuestionIndex = 0;
  bool hasSelected = false;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    question = sampleQuestions[currentQuestionIndex];
  }

  void resetSelection() {
    setState(() {
      hasSelected = false;
      selectedIndex = null;
    });
  }

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
                  const SizedBox(height: 32),
                  QuestionCard(
                    questionText: 'qustion1',
                    questionimage: Assets.imagesQ1,
                  ),

                  Expanded(
                    child: OptionsListview(
                      question: question,
                      onOptionSelected: () {
                        setState(() {
                          
                          hasSelected = true;
                        });
                      },
                    ),
                  ),

                  ButtonsSection(
                    onBack: () {
                      setState(() {
                        if (currentQuestionIndex > 0) {
                          currentQuestionIndex--;
                          question = sampleQuestions[currentQuestionIndex];
                          resetSelection();
                        }
                      });
                    },
                    onNext: () {
                      setState(() {
                        if (currentQuestionIndex < sampleQuestions.length - 1) {
                          currentQuestionIndex++;
                          question = sampleQuestions[currentQuestionIndex];
                          resetSelection();
                        }
                      });
                    },
                    isSelected: hasSelected,
                  ),
                  SizedBox(height: 55),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
