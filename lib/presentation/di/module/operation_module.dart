import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';

class OperationModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    getIt.registerFactory(() => GetComicsOperation(
      getIt.get(),
      getIt.get(),
      getIt.get()
    ));
    getIt.registerFactory(() => GetComicPanelsOperation(
      getIt.get(),
      getIt.get(),
      getIt.get()
    ));
  }
}