void main() {
  Map<String, dynamic> student = {
    'name': 'John',
    'age': 20,
    'grade': 'A',
  };

  print('Initial student: $student');

  // Add new entry
  student['school'] = 'ABC High School';
  print('After adding school: $student');

  // Update age
  student['age'] = 21;
  print('After updating age: $student');

  // Remove grade
  student.remove('grade');
  print('After removing grade: $student');
}
