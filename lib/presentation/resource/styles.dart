import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const Color BACKGROUND_COLOR = Color(0xFF404040);
  static const Color ELEMENT_COLOR = Color(0xFF303030);
  static const Color TEXT_COLOR = COLOR_WHITE;

  static const Color COLOR_WHITE = Colors.white;
  static const Color COLOR_BLACK = Colors.black;

  static ThemeData getAppTheme(final BuildContext context) =>
    ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: Theme.of(context).textTheme.apply(
        fontFamily: 'Komika',
        bodyColor: TEXT_COLOR,
        displayColor: TEXT_COLOR,
      )
    );
}