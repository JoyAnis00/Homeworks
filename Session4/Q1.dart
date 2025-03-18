// ignore_for_file: public_member_api_docs, sort_constructors_first
//1. Variables, Data Types & Print Statement
//Create a Dart program that declares and initializes the following variables
import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()?.trim() ?? " ";

  stdout.write("Enter your age: ");
  int age = int.tryParse(stdin.readLineSync()?.trim() ?? "") ?? 0;

  stdout.write("Enter your height (in cm): ");
  double height = double.tryParse(stdin.readLineSync()?.trim() ?? "") ?? 0.0;

  stdout.write("Are you a student? (true/false): ");
  bool isStudent = (stdin.readLineSync()?.trim().toLowerCase() == "true");

  PersonInformation person = PersonInformation(
    name: name,
    age: age,
    height: height,
    isStudent: isStudent,
  );

  print(
      "Name: ${person.name}\n Age: ${person.age}\n Height: ${person.height}cm\n Student: ${person.isStudent}");
}

class PersonInformation {
  String name;
  int age;
  double height;
  bool isStudent;

  PersonInformation({
    required this.name,
    required this.age,
    required this.height,
    required this.isStudent,
  });
}
