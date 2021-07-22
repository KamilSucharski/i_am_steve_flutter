import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    final Dio dio = Dio();
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        maxWidth: 120,
      ));
    }
    getIt.registerSingleton(dio);

    getIt.registerFactory(() => ComicApi(
      getIt.get(),
      getIt.get()
    ));
  }
}