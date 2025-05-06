// If Condition with String Comparison
import 'dart:io';

void main() {
  print('Enter password:');
  String? password = stdin.readLineSync();
  
  if (password == 'secret') {
    print('Access granted');
  } else {
    print('Access denied');
  }
}
