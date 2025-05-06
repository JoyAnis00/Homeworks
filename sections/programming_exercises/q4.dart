// Map Lookup
import 'dart:io';

void main() {
  Map<String, String> person = {
    'name': 'Alice',
    'age': '25',
    'city': 'New York',
  };
  
  // Print the age of the person from the map
  print('Age: ${person['age']}');
  
  print('Enter new city:');
  String? newCity = stdin.readLineSync();
  if (newCity != null) {
    person['city'] = newCity;
  }
  
  print(person);
}
