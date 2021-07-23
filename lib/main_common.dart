import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/presentation/app.dart';
import 'package:i_am_steve_flutter/presentation/di/Injector.dart';

void startApp(final String baseUrl) {
  Injector.initialize(baseUrl);
  runApp(App());
}