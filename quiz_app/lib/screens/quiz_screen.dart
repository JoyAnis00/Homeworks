import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/widgets/buttons_section.dart';
import 'package:quiz_app/widgets/options_listview.dart';
import 'package:quiz_app/widgets/qustion_counter_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QuizManager quizManager = QuizManager();
  int? selectedIndex;
  bool hasSelected = false;

  void resetSelection() {
    setState(() {
      selectedIndex = null;
    });
  }

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
      hasSelected = true;

      bool isCorrect = quizManager.currentQuestion.isCorrectAnswer(index);

      quizManager.answerQuestion(isCorrect);
    });
  }

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
          builder: (context) => ResultScreen(
            score: quizManager.score,
            totalQuestions: quizManager.totalQuestions,
          ),
        ),
      );
    }
  }

  void goToPreviousQuestion() {
    if (quizManager.currentQuestionIndex == 0) return;

    setState(() {
      quizManager.goToPreviousQuestion();
      resetSelection();
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
                  QuestionCard(
                    questionimage: quizManager.currentQuestion.imagePath,
                    currentQuestionIndex: quizManager.currentQuestionIndex + 1,
                  ),
                  Expanded(
                    child: OptionsListview(
                      question: quizManager.currentQuestion,
                      selectedIndex: selectedIndex,
                      onOptionSelected: selectOption,
                    ),
                  ),
                  ButtonsSection(
                    onBack: goToPreviousQuestion,
                    onNext: goToNextQuestion,
                    isSelected: hasSelected,
                    isLastQuestion: isLastQuestion,
                  ),
                  SizedBox(height: 55),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
