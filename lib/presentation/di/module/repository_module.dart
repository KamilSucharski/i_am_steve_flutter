import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_local_impl.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_remote_impl.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RepositoryModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    GetIt.I.registerFactory<ComicRepositoryLocal>(() => ComicRepositoryLocalImpl());
    GetIt.I.registerFactory<ComicRepositoryRemote>(() => ComicRepositoryRemoteImpl());
  }
}