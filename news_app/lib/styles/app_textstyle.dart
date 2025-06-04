import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle headline1({Color color = Colors.black}) => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
      );

  static TextStyle headline2({Color color = Colors.black87}) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle bodyText({Color color = Colors.black54}) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );

  static TextStyle caption({Color color = Colors.grey}) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color,
      );
}