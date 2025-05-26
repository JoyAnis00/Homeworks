import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search The city'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: TextField(
              onSubmitted: (value) async {
                // Call the weather service to get the weather data
                var weatherModel = BlocProvider.of<GetWeatherCubit>(context);
                weatherModel.getWeather(value);

                // Navigate back to the home view with the weather data
                Navigator.pop(context);
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                hintText: 'Enter city name',
                label: Text(
                  'City Name',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrangeAccent,
                    width: 2.0,
                  ),
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ));
  }
}
