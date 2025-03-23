//* Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
//*Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
//* Convert accordingly and return the result

import 'dart:io';

void main() {
  var value = getTemperature("Temperature:");
  stdout.write("Enter unit (C for Celsius, F for Fahrenheit): ");
  String unit = stdin.readLineSync()?.toUpperCase() ?? "";
  double? convertedValue = convertTemperature(value, unit);
  if (convertedValue != null) {
    String newUnit = (unit == "C") ? "F" : "C";
    stdout.write(
        "Converted temperature: ${convertedValue.toStringAsFixed(2)}°$newUnit");
  } else {
    stdout.write(
        "Invalid unit. Please enter 'C' for Celsius or 'F' for Fahrenheit.");
  }
}

double getTemperature(String message) {
  stdout.write(message);

  double tempValue = double.tryParse(stdin.readLineSync() ?? " ") ?? 0;

  return tempValue;
}

double? convertTemperature(double Temperature, String unit) {
  switch (unit) {
    case "C":
      return Temperature * 9 / 5 + 32;
    case "F":
      return (Temperature - 32) * 5 / 9;
    default:
      return null;
  }
}
