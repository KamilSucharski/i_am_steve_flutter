import 'package:dio/dio.dart';
import 'package:i_am_steve_flutter/data/api/rest_client.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class Api {
  late RestClient client;

  Api({
    required final Flavor flavor,
  }) {
    client = RestClient(
      Dio(),
      baseUrl: flavor.getBaseUrl(),
    );
  }
}
