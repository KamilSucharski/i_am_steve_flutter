import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CubitModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    GetIt.I.registerFactory(() => StartCubit());
    GetIt.I.registerFactory(() => ComicGalleryCubit());
    GetIt.I.registerFactory(() => ComicCubit());
    GetIt.I.registerFactory(() => ArchiveCubit());
  }
}