import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyle {
  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      fontSize: 12,

      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      fontSize: 24,

      color: color ?? AppColors.accentColor,
    );
  }

  static TextStyle medium16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      fontSize: 16,

      color: color ?? AppColors.accentColor,
    );
  }
}
