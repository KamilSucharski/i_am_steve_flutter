import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const Color BACKGROUND_COLOR = Color(0xFF404040);
  static const Color ELEMENT_COLOR = Color(0xFF303030);
  static const Color TEXT_COLOR = Colors.white;

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