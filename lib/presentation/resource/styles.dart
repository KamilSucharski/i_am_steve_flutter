import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const Color backgroundColor = Color(0xFF404040);
  static const Color elementColor = Color(0xFF303030);
  static const Color textColor = Colors.white;

  static ThemeData get appTheme =>
      ThemeData(
        primaryColor: backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Komika',
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