import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static LinearGradient appStartBackground = LinearGradient(
    colors: [
      const Color(0xff1DFBD3),
      AppColors.primaryButtonAndTextColor,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: const [0.0, 0.8],
  );

  static LinearGradient appStartBackgroundSecond = LinearGradient(
    colors: [
      const Color(0xff1DFBD3),
      AppColors.primaryButtonAndTextColor,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: const [0.1, 0.5],
  );

  static Color white = Colors.white;

  static Color colorTextGreen = const Color(0xff1DFBD3);  
  static Color primaryButtonAndTextColor = const Color(0xff1E9BD4);
}
