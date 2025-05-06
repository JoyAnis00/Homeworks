import 'dart:io';

// Function for addition with optional numbers
double add(double a, double b, [double? c]) {
  return c != null ? a + b + c : a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}

void main() {
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Addition: ${add(num1, num2)}');
  print('Subtraction: ${subtract(num1, num2)}');
  print('Multiplication: ${multiply(num1, num2)}');
  if (num2 != 0) {
    print('Division: ${divide(num1, num2)}');
  } else {
    print('Cannot divide by zero!');
  }

  // Optional: Addition of three numbers
  print('Enter a third number (optional):');
  String? thirdInput = stdin.readLineSync();
  if (thirdInput != null && thirdInput.isNotEmpty) {
    double num3 = double.parse(thirdInput);
    print('Addition of three numbers: ${add(num1, num2, num3)}');
  }
}
