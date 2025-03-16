//   Create a program that asks the user to input a number and checks if it's positive, negative, or zero
// using if-else statements.
import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("The number is negative.");
  } else if (number > 0) {
    print("The number is positive.");
  } else {
    print("The number is zero.");
    return;
  }

  if (number % 2 == 0) {
    print("The number is even.");
  } else {
    print("The number is odd.");
  }
}
