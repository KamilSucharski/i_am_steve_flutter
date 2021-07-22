import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';

class CubitModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    getIt.registerFactory(() => StartCubit(
      getIt.get(),
      getIt.get()
    ));
    getIt.registerFactory(() => ComicGalleryCubit());
    getIt.registerFactory(() => ComicCubit(
      getIt.get()
    ));
    getIt.registerFactory(() => ArchiveCubit());
  }
}