// 4. Maps, Functions & User Input
// Create a Dart program that:
// - Declares a `Map<String, int>` where keys are fruit names and values are their prices.
// - Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
// - If the fruit is not found, return -1.
// Call the function inside `main()` and print the result.

import 'dart:io';

Map<String, int> fruitPrices = {
  'apple': 5,
  'banana': 3,
  'orange': 4,
  'grape': 6,
};

int getPrice(String fruitName) {
  return fruitPrices[fruitName.toLowerCase()] ?? -1;
}

void main() {
  stdout.write('Enter fruit name: ');
  String fruitName = stdin.readLineSync()!;

  int price = getPrice(fruitName);
  if (price == -1) {
    print('Fruit not found.');
  } else {
    print('The price of $fruitName is $price.');
  }
}
