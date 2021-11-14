import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_am_steve_flutter/presentation/app.dart';
import 'package:i_am_steve_flutter/presentation/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencyInjection();
  await _setPortraitOrientation();
  runApp(App());
}

Future<void> _setPortraitOrientation() => SystemChrome
  .setPreferredOrientations([DeviceOrientation.portraitUp]);