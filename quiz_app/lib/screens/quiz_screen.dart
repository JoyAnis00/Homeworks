import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/widgets/background.dart';
import 'package:quiz_app/widgets/buttons_section.dart';
import 'package:quiz_app/widgets/qustion_counter_card.dart';
import 'package:quiz_app/widgets/qustions_view.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true, // يحافظ على الصفحة الحالية عند التمرير
    viewportFraction: 1.0, // يجعل كل صفحة تأخذ العرض الكامل
  );
  final QuizManager quizManager = QuizManager();

  int currentPageIndex = 0;
  bool hasSelected = false;

  // لما المستخدم يختار إجابة
  void onOptionSelected(int selectedIndex) {
    setState(() {
      quizManager.answerQuestion(selectedIndex);
      hasSelected = true;
    });
  }

  // لما المستخدم يضغط "Next"
  void goToNextQuestion() {
    if (currentPageIndex < quizManager.totalQuestions - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // نهاية الكويز، نروح لشاشة النتائج
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (_) => ResultScreen(
                score: quizManager.score,
                totalQuestions: quizManager.totalQuestions,
              ),
        ),
      );
    }
  }

  // لما المستخدم يضغط "Back"
  void goToPreviousQuestion() {
    if (currentPageIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isLastQuestion = currentPageIndex == quizManager.totalQuestions - 1;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BackgroundWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              // كارت العدادات والسؤال الحالي
              QuestionCard(
                questionimage:
                    quizManager.questions[currentPageIndex].imagePath,
                currentQuestionIndex: currentPageIndex + 1,
              ),
              const SizedBox(height: 20),
              // الـ PageView لعرض الأسئلة
              Expanded(
                child: PageView.builder(
                  controller: _pageController,

                  itemCount: quizManager.totalQuestions,
                  onPageChanged: (index) {
                    setState(() {
                      currentPageIndex = index;
                      hasSelected = false; // لما نغير السؤال نرجع حالة الاختيار فاضية
                    });
                  },
                  itemBuilder: (context, index) {
                    return QuestionTextWidget(
                      question: quizManager.questions[index],
                      onOptionSelected: (selectedIndex) {
                        onOptionSelected(selectedIndex);
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              // أزرار التحكم: Back و Next
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
    );
  }
}
