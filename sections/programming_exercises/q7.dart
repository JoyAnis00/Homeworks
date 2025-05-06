// If-Else with Grades
import 'dart:io';

void main() {
  print('Enter marks:');
  int marks = int.parse(stdin.readLineSync()!);
  
  if (marks >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
