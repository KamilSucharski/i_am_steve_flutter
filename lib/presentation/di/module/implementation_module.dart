import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/presentation/di/injector_module.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/asset_reader_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/configuration_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/local_storage_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/logger_impl.dart';

class ImplementationModule implements InjectorModule {
  final String baseUrl;

  ImplementationModule(this.baseUrl);

  @override
  void initialize(final GetIt getIt) {
    getIt.registerFactory<AssetReader>(() => AssetReaderImpl());
    getIt.registerFactory<Configuration>(() => ConfigurationImpl(baseUrl));
    getIt.registerFactory<LocalStorage>(() => LocalStorageImpl());
    getIt.registerFactory<Logger>(() => LoggerImpl());
  }
}