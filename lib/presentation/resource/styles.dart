import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const Color backgroundColor = Color(0xFF404040);
  static const Color darkerBackgroundColor = Color(0xFF303030);
  static const Color textColor = colorWhite;
  static const Color buttonColor = Color(0xFFC1C1C1);

  static const Color colorWhite = Colors.white;
  static const Color colorBlack = Colors.black;

  static ThemeData getAppTheme({
    required final BuildContext context
  }) => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: backgroundColor,
    primaryColor: darkerBackgroundColor,
    colorScheme: const ColorScheme.light(
      primary: darkerBackgroundColor,
      primaryVariant: darkerBackgroundColor,
      secondary: buttonColor,
      background: backgroundColor,
    ),
    textTheme: Theme.of(context).textTheme.apply(
      fontFamily: 'Komika',
      bodyColor: textColor,
      displayColor: textColor,
      decoration: TextDecoration.none,
    ),
  );
}