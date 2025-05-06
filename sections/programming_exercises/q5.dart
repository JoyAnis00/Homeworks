// Using Comparison Operators
import 'dart:io';

void main() {
  print('Enter x:');
  int x = int.parse(stdin.readLineSync()!);
  
  print('Enter y:');
  int y = int.parse(stdin.readLineSync()!);
  
  print(x < y);
}
