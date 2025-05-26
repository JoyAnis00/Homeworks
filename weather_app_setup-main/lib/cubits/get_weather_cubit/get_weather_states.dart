import 'package:weather_app/models/weather_model.dart';

class WeatherStates {}

class NoWeatherStates extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {
  final WeatherModel weather;

  WeatherLoadedState({required this.weather});
}

class WeatherFailedStates extends WeatherStates {}
