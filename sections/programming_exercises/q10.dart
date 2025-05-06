// Null Safety with a Default Value
import 'dart:io';

void main() {
  int? score;
  
  print('Do you want to enter a score? (yes/no)');
  String? answer = stdin.readLineSync();
  
  if (answer == 'yes') {
    print('Enter score:');
    score = int.parse(stdin.readLineSync()!);
  }
  
  print(score ?? 'No score');
}
