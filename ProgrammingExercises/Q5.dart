//* Write a function that takes a sentence as input and returns the longest word in the sentence.
//*If multiple words have the same longest length, return the first one that appears
void main() {
  String sentence = "I love programming in Dart";
  print("The longest word in the sentence is: ${longestWord(sentence)}");
}

String longestWord(String sentence) {
  List<String> words = sentence.split(" ");
  String longestWord = words[0];
  for (var word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
