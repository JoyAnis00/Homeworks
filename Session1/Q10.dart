//  Explain what happens if you try to use a variable before it is declared in Dart.
void main() {
 // print(name);-> // Error: Undefined name 'name'.
 // The non-nullable local variable 'name' must be assigned before it can be used.
  
  String name = "Joy"; 
  print(name);
}
