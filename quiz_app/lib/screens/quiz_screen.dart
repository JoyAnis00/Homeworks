import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';

import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/widgets/buttons_section.dart';

import 'package:quiz_app/widgets/qustion_counter_card.dart';
import 'package:quiz_app/widgets/qustions_view.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Initialize the QuizManager to manage quiz state
  final QuizManager quizManager = QuizManager();
  // Variable to track the selected index of the answer
  int? selectedIndex;
  bool hasSelected = false;
  // Function to reset the selection state
  // This function is called when the user selects an answer

  void resetSelection() {
    setState(() {
      selectedIndex = null;
    });
  }

  // Function to handle the selection of an answer
  // This function is called when the user selects an answer
  void onOptionSelected(int index) {
    setState(() {
      quizManager.answerQuestion(index);
      hasSelected = true;
    });
  }

  // Function to navigate to the next question
  // If the current question is the last one, navigate to the result screen
  void goToNextQuestion() {
    if (quizManager.hasNextQuestion) {
      setState(() {
        quizManager.goToNextQuestion();
        resetSelection();
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => ResultScreen(
                score: quizManager.score,
                totalQuestions: quizManager.totalQuestions,
              ),
        ),
      );
    }
  }
  // Function to navigate to the previous question
  // If the current question index is 0, do nothing

  void goToPreviousQuestion() {
    if (quizManager.currentQuestionIndex == 0) return;

    setState(() {
      quizManager.goToPreviousQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLastQuestion = !quizManager.hasNextQuestion;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  // Display the question counter card
                  QuestionCard(
                    questionimage: quizManager.currentQuestion.imagePath,
                    currentQuestionIndex: quizManager.currentQuestionIndex + 1,
                  ),
                  const SizedBox(height: 20),
                  // Display the question text and options
                  // The QuestionTextWidget takes the current question and a callback for option selection
                  QuestionTextWidget(
                    question: quizManager.currentQuestion,
                    onOptionSelected: onOptionSelected,
                  ),
                  const Spacer(),
                  ButtonsSection(
                    onBack: goToPreviousQuestion,
                    onNext: goToNextQuestion,
                    isSelected: hasSelected,
                    isLastQuestion: isLastQuestion,
                  ),
                  const SizedBox(height: 55),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
