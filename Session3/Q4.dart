import 'dart:io';

void main() {
  List<Map<String, dynamic>> weather = [
    {'city': 'New York', 'temperature': 80, 'humidity': 70},
    {'city': 'London', 'temperature': 10, 'humidity': 50},
    {'city': 'Tokyo', 'temperature': 30, 'humidity': 60}
  ];

  while (true) {
    stdout.write('Enter the city name (or exit): ');
    String? city = stdin.readLineSync()?.trim().toLowerCase();

    if (city == null || city.isEmpty) {
      print('City name is required');
      continue;
    }
    if (city == "exit") {
      print("Exiting program.");
      break;
    }

    bool isFound = weatherdetails(weather, city);
    if (isFound == false) {
      print('City not found in the list');
    }
  }
}

bool weatherdetails(List<Map<String, dynamic>> list, String city) {
  for (var element in list) {
    if (element["city"].toString().toLowerCase() == city) {
      print(
          'City: ${element["city"]}, Temperature: ${element["temperature"]}, Humidity: ${element["humidity"]}%');
      return true;
    }
  }
  return false;
}
