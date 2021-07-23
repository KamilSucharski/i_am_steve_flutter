import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/presentation/di/injector_module.dart';

class NetworkModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    getIt.registerSingleton(Dio());

    getIt.registerFactory(() => ComicApi(
      getIt.get(),
      getIt.get()
    ));
  }
}