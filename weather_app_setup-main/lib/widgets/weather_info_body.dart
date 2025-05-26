import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel!.location,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            'updated at ${weatherModel!.date.hour}:${weatherModel.date.minute.toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https:${weatherModel!.image}',
              ),
              Text(
                '${weatherModel!.temperature.round()}°C',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Max temp: ${weatherModel!.maxtemp.round()}°C',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Min temp: ${weatherModel!.mintemp.round()}°C',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            weatherModel!.weathercondition,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
