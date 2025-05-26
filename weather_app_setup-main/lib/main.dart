import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

import 'package:weather_app/views/home_view.dart';

import 'cubits/get_weather_cubit/get_weather_states.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            String weatherCondition = 'sunny'; // Default value

            if (state is WeatherLoadedState) {
              weatherCondition = state.weather.weathercondition;
            }

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: getWeatherColor(weatherCondition),
              ),
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}


MaterialColor getWeatherColor(String condition) {
  switch (condition.toLowerCase()) {
    case 'sunny':
    case 'clear':
      return Colors.orange;

    case 'partly cloudy':
      return Colors.blueGrey;

    case 'cloudy':
    case 'overcast':
      return Colors.grey;

    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.brown;

    case 'patchy rain possible':
    case 'light rain':
    case 'moderate rain':
    case 'heavy rain':
    case 'patchy light rain':
    case 'patchy light drizzle':
    case 'drizzle':
    case 'light drizzle':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
    case 'torrential rain shower':
      return Colors.blue;

    case 'patchy snow possible':
    case 'snow':
    case 'light snow':
    case 'moderate snow':
    case 'heavy snow':
    case 'blizzard':
    case 'patchy light snow':
    case 'patchy moderate snow':
    case 'patchy heavy snow':
    case 'moderate or heavy snow showers':
    case 'moderate or heavy snow with thunder':
      return Colors.lightBlue;

    case 'sleet':
    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.indigo;

    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.cyan;

    case 'thundery outbreaks possible':
    case 'patchy light snow with thunder':
    case 'thunder':
      return Colors.deepPurple;

    default:
      return Colors.teal; // Default fallback
  }
}
