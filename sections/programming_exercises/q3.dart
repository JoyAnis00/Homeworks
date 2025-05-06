// Set Properties
import 'dart:io';

void main() {
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  
  // Print the length of uniqueNumbers
  print(uniqueNumbers.length);
  
  print('Enter a number to check if it exists in the set:');
  String? input = stdin.readLineSync();
  if (input != null) {
    int number = int.parse(input);
    print(uniqueNumbers.contains(number));
  }
}
