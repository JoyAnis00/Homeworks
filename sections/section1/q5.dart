void main() {
  // var example
  var name = "Alice"; // Type is inferred as String
  print("Name: $name");

  // dynamic example
  dynamic value = 42; // Can hold any type
  print("Value: $value");
  value = "Now a String";
  print("Updated Value: $value");
}