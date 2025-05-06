// Nested If for Temperature Ranges
import 'dart:io';

void main() {
  print('Enter temperature:');
  int temp = int.parse(stdin.readLineSync()!);
  
  if (temp > 30) {
    print("It's hot!");
  } else if (temp >= 15 && temp <= 30) {
    print("It's warm.");
  } else {
    print("It's cold.");
  }
}
