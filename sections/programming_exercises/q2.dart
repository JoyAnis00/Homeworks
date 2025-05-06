// Adding and Removing Elements in a List
import 'dart:io';

void main() {
  List<String> colors = ['red', 'green', 'blue'];
  
  print('Enter a color to add:');
  String? newColor = stdin.readLineSync();
  if (newColor != null) {
    colors.add(newColor);
  }
  print(colors);
  
  print('Enter a color to remove:');
  String? colorToRemove = stdin.readLineSync();
  if (colorToRemove != null) {
    colors.remove(colorToRemove);
  }
  print(colors);
}
