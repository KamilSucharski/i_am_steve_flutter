import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comicAPI.dart';
import 'package:i_am_steve_flutter/data/mapper/comicMapper.dart';
import 'package:i_am_steve_flutter/data/repository/comicRepositoryLocalImpl.dart';
import 'package:i_am_steve_flutter/data/repository/comicRepositoryRemoteImpl.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryLocal.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryRemote.dart';
import 'package:i_am_steve_flutter/domain/util/assetReader.dart';
import 'package:i_am_steve_flutter/presentation/util/implementation/assetReaderImpl.dart';

class Injector {

  static void initialize() {
    // Networking
    GetIt.I.registerFactory(() => Dio());

    // API
    GetIt.I.registerFactory(() => ComicAPI());

    // Mapper
    GetIt.I.registerFactory(() => ComicMapper());

    // Repository
    GetIt.I.registerFactory<ComicRepositoryLocal>(() => ComicRepositoryLocalImpl());
    GetIt.I.registerFactory<ComicRepositoryRemote>(() => ComicRepositoryRemoteImpl());

    // Util
    GetIt.I.registerFactory<AssetReader>(() => AssetReaderImpl());
  }
}