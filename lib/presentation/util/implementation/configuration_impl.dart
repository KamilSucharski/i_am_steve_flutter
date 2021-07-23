import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';

class ConfigurationImpl implements Configuration {
  final String baseUrl;

  ConfigurationImpl(this.baseUrl);

  @override
  String getBaseUrl() => baseUrl;
}