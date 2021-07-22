import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/asset_reader_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/configuration_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/local_storage_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/logger_impl.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ImplementationModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    GetIt.I.registerFactory<AssetReader>(() => AssetReaderImpl());
    GetIt.I.registerFactory<Configuration>(() => ConfigurationImpl(
        'https://iamsteve.neocities.org/'
    ));
    GetIt.I.registerFactory<LocalStorage>(() => LocalStorageImpl());
    GetIt.I.registerFactory<Logger>(() => LoggerImpl());
  }
}