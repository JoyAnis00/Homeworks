import 'dart:io';

Map<String, Map<String, dynamic>> weatherData = {
  'Cairo': {'temperature': 35, 'humidity': 20},
  'London': {'temperature': 18, 'humidity': 65},
  'Tokyo': {'temperature': 27, 'humidity': 50},
};

void getWeather(String city) {
  if (weatherData.containsKey(city)) {
    var data = weatherData[city]!;
    print('City: $city');
    print('Temperature: ${data['temperature']}°C');
    print('Humidity: ${data['humidity']}%');
  } else {
    print('No data for $city.');
  }
}

void main() {
  print('Enter city name:');
  String? city = stdin.readLineSync();
  if (city != null && city.isNotEmpty) {
    getWeather(city);
  }
}
