class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void start() {
    print('$brand $model is starting...');
  }

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Corolla', 2022);

  // Access properties using dot operator
  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);

  // Call methods
  myCar.start();
  myCar.displayInfo();
}
