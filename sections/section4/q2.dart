// 2. Arithmetic Operators, Conditional Statements & Functions
// Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
// bonus based on the following rules:
// - If the employee has worked for 5 or more years, they get a 10% bonus.
// - Otherwise, they get a 5% bonus.
// The function should return the bonus amount.
// Then, call the function inside `main()` and print the result.

import 'dart:io';

double calculateBonus(int salary, int yearsWorked) {
  if (yearsWorked >= 5) {
    return salary * 0.10;
  } else {
    return salary * 0.05;
  }
}

void main() {
  stdout.write('Enter your salary: ');
  int salary = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your years of work: ');
  int yearsWorked = int.parse(stdin.readLineSync()!);

  double bonus = calculateBonus(salary, yearsWorked);
  print('Your bonus is: $bonus');
}
