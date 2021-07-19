import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/data/mapper/comic_mapper.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_local_impl.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_remote_impl.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/asset_reader_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/configuration_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/local_storage_impl.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/logger_impl.dart';

class Injector {

  static void initialize() {
    // Networking
    final Dio dio = Dio();
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        maxWidth: 120,
      ));
    }
    GetIt.I.registerSingleton(dio);

    // API
    GetIt.I.registerFactory(() => ComicAPI());

    // Mapper
    GetIt.I.registerFactory(() => ComicMapper());

    // Repository
    GetIt.I.registerFactory<ComicRepositoryLocal>(() => ComicRepositoryLocalImpl());
    GetIt.I.registerFactory<ComicRepositoryRemote>(() => ComicRepositoryRemoteImpl());

    // Util
    GetIt.I.registerFactory<AssetReader>(() => AssetReaderImpl());
    GetIt.I.registerFactory<Configuration>(() => ConfigurationImpl(
      'https://iamsteve.neocities.org/'
    ));
    GetIt.I.registerFactory<LocalStorage>(() => LocalStorageImpl());
    GetIt.I.registerFactory<Logger>(() => LoggerImpl());

    // Cubit
    GetIt.I.registerFactory(() => StartCubit());
    GetIt.I.registerFactory(() => ComicGalleryCubit());
    GetIt.I.registerFactory(() => ComicCubit());
  }
}