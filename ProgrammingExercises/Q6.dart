// Write a function that counts the number of words in a given sentence.
//Words are separated by spaces, and the function should ignore extra spaces.

void main() {
  String sentence = "  Hello   world!  This is   Dart.  ";
  print("Word count: ${countWords(sentence)}");
}

int countWords(String sentence) {
  List<String> words = sentence.split(" ");
  int count = 0;

  for (var word in words) {
    word = word.trim();
    if (word.isEmpty) continue;

    count++;
  }
  return count;
}
