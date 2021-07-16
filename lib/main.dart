import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/presentation/di/Injector.dart';

import 'app/app.dart';

void main() {
  Injector.initialize();
  runApp(App());
}