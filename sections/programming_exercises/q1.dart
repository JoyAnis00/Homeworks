// Using Dot Operator with Strings
import 'dart:io';

void main() {
  print('Enter a greeting:');
  String? greeting = stdin.readLineSync();
  
  if (greeting != null) {
    // Print the length of greeting
    print(greeting.length);
    
    // Convert greeting to uppercase and print it
    print(greeting.toUpperCase());
  }
}
