// Create a map representing a student with keys for name, age, and grade. Add, update,
//and remove entries from the map, printing the map after each operation.- Task 2: Iterate over the map and print each key-value pair.

void main() {
  Map<String, Map<String, dynamic>> students = {
    'Ali': {'age': 20, 'grade': 'A'},
    'Sara': {'age': 22, 'grade': 'B+'},
  };

  print("Initial student data: $students");

  students['Omar'] = {'age': 21, 'grade': 'A-'};
  print("\nAfter adding Omar: $students");

  students['Ali']?['grade'] = 'A+';
  print("\nAfter updating Ali's grade: $students");

  students.remove('Sara');
  print("\nAfter removing Sara: $students");

  print("\nStudent Details:");
  students.forEach((name, details) {
    print("\nName: $name");
    details.forEach((key, value) {
      print("$key: $value");
    });
  });
}
