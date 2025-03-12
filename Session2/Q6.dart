//  Use if to check string equality.
// Instructions:- Create a string variable password and set it to 'secret'.- If password equals 'secret', print 'Access granted', otherwise print 'Access denied'
import 'dart:io';

void main() {
  stdout.write("Enter the marks: ");
  String password = stdin.readLineSync()!;

  if (password == 'secret') {
    print('Access granted');
  } else {
    print('Access denied');
  }
}
