import 'package:e_commerse_app/cubits/product_cubit/product_cubit.dart';
import 'package:e_commerse_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: MaterialApp(
        title: 'E-Commerce App',
        theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF7E57C2, <int, Color>{
            50: Color(0xFFEDE7F6),
            100: Color(0xFFD1C4E9),
            200: Color(0xFFB39DDB),
            300: Color(0xFF9575CD),
            400: Color(0xFF7E57C2),
            500: Color(0xFF673AB7),
            600: Color(0xFF5E35B1),
            700: Color(0xFF512DA8),
            800: Color(0xFF4527A0),
            900: Color(0xFF311B92),
          }),
          useMaterial3: false,
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
