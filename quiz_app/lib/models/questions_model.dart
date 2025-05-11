class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });

  bool isCorrectAnswer(int selectedIndex) {
    return selectedIndex == correctOptionIndex;
  }
}
List<Question> sampleQuestions = [
  Question(
    questionText: "What is the capital of France?",
    options: ["Berlin", "Madrid", "Paris", "Rome"],
    correctOptionIndex: 2,
  ),
  Question(
    questionText: "Which planet is known as the Red Planet?",
    options: ["Earth", "Mars", "Jupiter", "Saturn"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "What is the largest mammal?",
    options: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Who wrote 'Romeo and Juliet'?",
    options: ["William Shakespeare", "Charles Dickens", "Mark Twain", "Jane Austen"],
    correctOptionIndex: 0,
  ),
];
