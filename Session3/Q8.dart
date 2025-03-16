// Write a Dart program that checks if a number is within a specified range using logical operators and
 //prints the result

import 'dart:io';

void main() {
  int lowerBound1 = 0, upperBound1 = 100;
  int lowerBound2 = 101, upperBound2 = 600;

  stdout.write("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number >= lowerBound1 && number <= upperBound1) {
    print('The number is within the range $lowerBound1-$upperBound1.');
  } else if (number >= lowerBound2 && number <= upperBound2) {
    print('The number is within the range $lowerBound2-$upperBound2.');
  } else {
    print('The number is outside the specified range.');
  }
}
