import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_local_impl.dart';
import 'package:i_am_steve_flutter/data/repository/comic_repository_remote_impl.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/presentation/di/injector_module.dart';

class RepositoryModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    getIt.registerFactory<ComicRepositoryLocal>(() => ComicRepositoryLocalImpl(
      getIt.get(),
      getIt.get()
    ));
    getIt.registerFactory<ComicRepositoryRemote>(() => ComicRepositoryRemoteImpl(
      getIt.get(),
      getIt.get()
    ));
  }
}