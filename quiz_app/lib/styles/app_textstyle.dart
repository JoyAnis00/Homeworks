import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyle {
  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.0,
      letterSpacing: 0.0,
      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.0,
      letterSpacing: 0.0,
      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      fontSize: 18,
      height: 1.0,
      letterSpacing: 0.0,
      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      fontSize: 24,
      height: 1.0,
      letterSpacing: 0.0,
      color: color ?? AppColors.accentColor,
    );
  }
}