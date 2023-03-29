import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static LinearGradient appStartBackground = const LinearGradient(
    colors: [
      Color(0xff1DFBD3),
      AppColors.primaryButtonAndTextColor,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.0, 0.8],
  );

  static LinearGradient appStartBackgroundSecond = const LinearGradient(
    colors: [
      Color(0xff1DFBD3),
      AppColors.primaryButtonAndTextColor,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.1, 0.5],
  );

  static const Color white = Colors.white;

  static const Color colorTextGreen = Color(0xff1DFBD3);
  static const Color colorTextBlue = AppColors.primaryButtonAndTextColor;

  static const Color primaryButtonAndTextColor = Color(0xff1E9BD4);
}
