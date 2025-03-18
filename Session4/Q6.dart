// ignore_for_file: public_member_api_docs, sort_constructors_first
//Create a class `Person` with the following attributes:- `String name`- `int? age` (nullable)- `bool isStudent` (default is false)
//Implement:- A constructor that initializes `name` and `age`.- A method `displayInfo()` that prints the person's details.
//In `main()`, create an instance of `Person` and call `displayInfo()`

void main() {
  Person person = Person(name: "joy", age: 23, isStudent: true);
  person.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;
  Person({
    required this.name,
    this.age,
    this.isStudent = false,
  });
  void displayInfo() {
    print('Name: $name');
    print('Age: ${age ?? 'Unknown'}');
    print('Is Student: $isStudent');
  }
}
