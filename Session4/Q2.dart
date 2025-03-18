// Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
//bonus based on the following rules:- If the employee has worked for 5 or more years, they get a 10% bonus.- Otherwise, they get a 5% bonus.
//The function should return the bonus amount.
//Then, call the function inside `main()` and print the result
import 'dart:io';


void main() {
  stdout.write("What is the salary ? ");
  var salary = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("How many years have you worked ? ");
  var yearsWorked = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  var bonus = calculateBonus(salary: salary, yearsWorked: yearsWorked);
 print("Bonus is: \$${bonus}");

}

num calculateBonus({required int salary, required int yearsWorked}) {
  if (yearsWorked >= 5) {
    return salary * 10 / 100;
  }
  return salary * 5 / 100;
}
