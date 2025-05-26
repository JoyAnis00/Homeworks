import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
 Dio dio = Dio();
final String baseUrl = 'https://api.weatherapi.com/v1';
final String apiKey = 'aea932c7f88d4e0388c210730252305';
  Future<WeatherModel> getWeather(String cityName) async {
    try {
  Response response = await dio.get(
    '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1'
  );
    
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  return weatherModel;
} on DioException catch (e) {
  // Handle DioException
final errorMessage = e.response?.data['error']['message'] ?? 'An error occurred';
  throw Exception('Failed to load weather data: $errorMessage');
}catch (e) {
  // Handle other exceptions
  throw Exception('Failed to load weather data');
}
  }
}