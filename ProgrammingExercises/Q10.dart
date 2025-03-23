void main() {
  Employee emp1 = FullTimeEmployee("Joy", 101, 3000, 500);
  Employee emp2 = PartTimeEmployee("Mariam", 102, 40, 15);

  print(emp1);
  print(emp2);
}

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }

  @override
  String toString() =>
      "ID: $id, Name: $name, Salary: \$${calculateSalary().toStringAsFixed(2)}";
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
      : super(name, id, salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
      : super(name, id, 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
