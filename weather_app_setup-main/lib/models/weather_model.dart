class WeatherModel {
  final String location;
  final double temperature;
  final String? image;
  final double maxtemp;
  final double mintemp;
  final String weathercondition;
  final DateTime date;

  WeatherModel({
    required this.location,
    required this.temperature,
    this.image,
    required this.maxtemp,
    required this.mintemp,
    required this.weathercondition,
    required this.date,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: json['location']['name'],
      temperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'], // ✅ صح
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'], // ✅ صح
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'], // ✅ صح
      weathercondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      date: DateTime.parse(json['current']['last_updated']),
    );
  }
}
