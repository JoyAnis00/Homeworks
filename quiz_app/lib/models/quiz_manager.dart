import 'package:quiz_app/models/questions_model.dart';

class QuizManager {
  final List<Question> _questions =  sampleQuestions ;
  int _currentQuestionIndex = 0;
  int _score = 0;

  QuizManager();
  List<Question> get questions => _questions;
  Question get currentQuestion => _questions[_currentQuestionIndex];

  int get currentQuestionIndex => _currentQuestionIndex;

  bool get hasNextQuestion => _currentQuestionIndex < _questions.length - 1;

  void answerQuestion(int selectedIndex) {
    currentQuestion.selectedIndex = selectedIndex;
    bool isCorrect = currentQuestion.correctOptionIndex == selectedIndex;
    if (isCorrect) {
      _score++;
    }
  }

  void goToNextQuestion() {
    if (hasNextQuestion) {
      _currentQuestionIndex++;
    }
  }

  void goToPreviousQuestion() {
    if (_currentQuestionIndex > 0) {
      _currentQuestionIndex--;
    }
  }

  int get score => _score;

  void reset() {
    _currentQuestionIndex = 0;
    _score = 0;
  }
  
  int get totalQuestions => _questions.length;


}
