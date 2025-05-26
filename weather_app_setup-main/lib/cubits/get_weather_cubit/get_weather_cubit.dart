import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';
import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NoWeatherStates());
   WeatherModel ?weatherModel;
  getWeather(String cityName) async {
    try {
      emit(WeatherLoadingState()); // بداية التحميل

     weatherModel = await WeatherServices().getWeather(cityName);

      emit(WeatherLoadedState(weather: weatherModel!)); // البيانات جاهزة
    } catch (e) {
      log('Error fetching weather: $e');
      emit(WeatherFailedStates());
    }
  }
}
