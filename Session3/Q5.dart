// ignore_for_file: public_member_api_docs, sort_constructors_first
// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
//access and print its properties and methods.
void main() {
  Animals lion = Animals(species: "Lion", legs: 4, habitat: "Africa");
  print("Species: ${lion.species}");
  print("Legs: ${lion.legs}");
  print("Habitat: ${lion.habitat}");
  lion.move();
  lion.eat();
}

class Animals {
  String species;
  int legs;
  String habitat;
  Animals({
    required this.species,
    required this.legs,
    required this.habitat,
  });
  void move() {
    print("$species are moving.");
  }

  void eat() {
    print("$species are eating.");
  }
}
