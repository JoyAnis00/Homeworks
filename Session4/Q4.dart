// Create a Dart program that:- Declares a `Map<String, int>` where keys are fruit names and values are their
// prices.- Implements a function `getPrice(String fruitName)` that returns the price of a
//given fruit.- If the fruit is not found, return -1.
// Call the function inside `main()` and print the result
import 'dart:io';

void main() {
  Map<String, int> fruitPrices = {
    'apple': 1,
    'banana': 2,
    'orange': 3,
    'grape': 4,
    'kiwi': 5,
    'mango': 6,
    'watermelon': 7,
    'papaya': 8,
  };
  stdout.write("Enter the fruit name: ");
  String fruitName = stdin.readLineSync()!.trim().toLowerCase();

  int price = getPrice(fruitPrices, fruitName);
  print("Price of $fruitName: $price\$\n");
}

int getPrice(Map<String, int> map, String fruitName) {
  if (map.containsKey(fruitName)) {
    return map[fruitName] ?? 0;
  }
  return -1;
}
