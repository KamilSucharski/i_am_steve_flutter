import 'dart:io';

import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';

class LoggerImpl implements Logger {
  @override
  void debug(final String string) {
    stdout.writeln(string);
  }

  @override
  void error(String string, [Error? error]) {
    stderr.writeln(string);
    if (error != null) {
      stderr.writeln(error.toString());
    }
  }
}
