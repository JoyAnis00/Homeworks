// 3. Lists, Loops & If Conditions
// Create a list of numbers. Iterate over the list and:
// - If a number is even, print "Even: <number>".
// - If a number is odd, print "Odd: <number>".

import 'dart:io';

void main() {
  stdout.write('Enter numbers separated by spaces: ');
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> numbers = input.map((e) => int.parse(e)).toList();

  for (var number in numbers) {
    if (number % 2 == 0) {
      print('Even: $number');
    } else {
      print('Odd: $number');
    }
  }
}
