import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Navigate to search screen
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchView()));
            },
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is NoWeatherStates) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoadedState) {
            return const WeatherInfoBody();
          } else if (state is WeatherFailedStates) {
            return const Center(child: Text('Failed to fetch weather'));
          } else {
            return const Center(child: Text('Something went wrong'));
          }
        },
      ),
    );
  }
}
