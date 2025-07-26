import 'package:docdoc/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData lighttheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: ColorManager.blucolor,
  );
  static ThemeData darktheme = ThemeData().copyWith(
    brightness: Brightness.dark,
    primaryColor: ColorManager.blucolor,
  );
}
