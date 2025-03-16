//ICreate a Dart program that takes two numbers as input and performs addition, subtraction,
//multiplication, and division using variables, arithmetic operators, and functions. Also, include
//optional parameters for different operations (e.g., addition of multiple numbers)

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  int input1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number 2: ");
  int input2 = int.parse(stdin.readLineSync()!);

  print("Addition: ${addition(input1, input2)}");
  print("Subtraction: ${subtraction(input1, input2)}");
  print("Multiplication: ${multiplication(input1, input2)}");
  print("Division: ${division(input1, input2)}");
}

num addition(num input1, num input2, [num number = 0]) {
  return input1 + input2 + number;
}

num subtraction(num input1, num input2) {
  return input1 - input2;
}

num multiplication(num input1, num input2) {
  return input1 * input2;
}

num division(num input1, num input2) {
  if (input2 == 0) {
    print("Error: Division by zero is not allowed");
    exit(1);
  }
  return input1 / input2;
}
