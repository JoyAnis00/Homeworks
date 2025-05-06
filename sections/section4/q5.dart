// 5. Sets, Functions & Return Statement
// Write a function `uniqueNames(List<String> names)` that:
// - Accepts a list of names.
// - Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.

import 'dart:io';

Set<String> uniqueNames(List<String> names) {
  return Set.from(names);
}

void main() {
  stdout.write('Enter names separated by spaces: ');
  List<String> names = stdin.readLineSync()!.split(' ');

  Set<String> unique = uniqueNames(names);
  print('Unique names: $unique');
}
