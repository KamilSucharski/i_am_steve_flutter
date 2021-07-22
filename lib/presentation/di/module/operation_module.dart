import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class OperationModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    getIt.registerFactory(() => GetComicsOperation());
    getIt.registerFactory(() => GetComicPanelsOperation());
  }
}