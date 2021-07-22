import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/mapper/comic_mapper.dart';
import 'package:i_am_steve_flutter/presentation/di/InjectorModule.dart';

class MapperModule implements InjectorModule {

  @override
  void initialize(final GetIt getIt) {
    GetIt.I.registerFactory(() => ComicMapper());
  }
}