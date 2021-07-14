import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const backgroundColor = Color(0xFF404040);
  static const elementColor = Color(0xFF303030);
  static const textColor = Colors.white;

  static ThemeData get appTheme =>
      ThemeData(
        primaryColor: backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Manrope',
        dividerTheme: DividerThemeData(
          color: elementColor,
          space: 1,
        ),
        accentColor: elementColor,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: textColor,
          ),
        ),
      );
}