// If you need a variable that can hold any type of value and may change during
// execution, which data type would you use? Write a code example to show this
void main() {
  dynamic value = "Joy";
  print("the value: $value type: ${value.runtimeType}");
  value= 3.14;
  print("the value: $value  type: ${value.runtimeType}");
   value= 3;
  print("the value: $value  type: ${value.runtimeType}");
   value= true;
  print("the value: $value  type: ${value.runtimeType}");
}
