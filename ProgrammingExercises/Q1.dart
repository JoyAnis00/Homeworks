 //*Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
 //*Handle cases where division by zero might occur.
 
import 'dart:io';

void main() {
  num num1 = getnumber();
  num num2 = getnumber();
  String operation = getOperation();
  num result = Calculate(num1, num2, operation);
  print("Result: $result");
}

num getnumber() {
  while (true) {
    stdout.write("Enter number: ");
    num? value = num.tryParse(stdin.readLineSync() ?? "");
    if (value != null) {
      return value;
    }
    print("Please enter a valid number.");
  }
}

String getOperation() {
  while (true) {
    stdout.write("Enter operation (*/-+): ");
    var value = stdin.readLineSync() ?? "";
    if (["+", "-", "*", "/"].contains(value)) {
      return value;
    }
    print("Please enter a valid operation.");
  }
}

num Calculate(num input1, num input2, String operation) {
  switch (operation) {
    case "+":
      return input1 + input2;

    case "-":
      return input1 - input2;

    case "*":
      return input1 * input2;

    case "/":
      if (input2 == 0) {
        print("Division by zero is not allowed");
        return double.nan;
      }
      return input1 / input2;

    default:
      print("Invalid operation");
      return 0;
  }
}
