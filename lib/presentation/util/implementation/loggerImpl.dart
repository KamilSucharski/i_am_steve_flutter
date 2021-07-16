import 'dart:io';

import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';

class LoggerImpl implements Logger {
  @override
  void debug(final String string) {
    stdout.writeln(string);
  }

  @override
  void error(String string, [Exception? exception]) {
    stderr.writeln(string);
    if (exception != null) {
      stderr.writeln(exception.toString());
    }
  }
}
