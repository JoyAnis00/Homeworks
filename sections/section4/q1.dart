// 1. Variables, Data Types & Print Statement
// Create a Dart program that declares and initializes the following variables:
// - Your name (String)
// - Your age (int)
// - Your height (double)
// - Whether you are a student (bool)
// Then, print these values using a single print statement.

import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your height: ');
  double height = double.parse(stdin.readLineSync()!);

  stdout.write('Are you a student? (true/false): ');
  bool isStudent = stdin.readLineSync()!.toLowerCase() == 'true';

  print('Name: $name, Age: $age, Height: $height, Student: $isStudent');
}
