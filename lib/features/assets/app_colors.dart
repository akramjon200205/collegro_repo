import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static LinearGradient avatarGradient = LinearGradient(
    colors: [
      colorTextGreen,
      const Color(0xff1245A4),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Color white = Colors.white;
  static Color black = const Color(0xff002029);
  static Color backgroundColor = const Color(0xffF5F5F5);

  static Color colorTextGreen = const Color(0xff1DFBD3);
  static Color primaryButtonAndTextColor = const Color(0xff1E9BD4);
}
