// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/api/api.dart' as _i13;
import '../../data/repository/comic_repository_local_impl.dart' as _i15;
import '../../data/repository/comic_repository_remote_impl.dart' as _i17;
import '../../data/util/abstraction/asset_reader.dart' as _i4;
import '../../data/util/abstraction/local_storage.dart' as _i9;
import '../../domain/operation/get_comic_panels_operation.dart' as _i18;
import '../../domain/operation/get_comics_operation.dart' as _i19;
import '../../domain/repository/comic_repository_local.dart' as _i14;
import '../../domain/repository/comic_repository_remote.dart' as _i16;
import '../../domain/util/abstraction/flavor.dart' as _i7;
import '../../domain/util/abstraction/logger.dart' as _i11;
import '../../domain/view/archive/archive_cubit.dart' as _i3;
import '../../domain/view/comic/gallery/comic_gallery_cubit.dart' as _i6;
import '../../domain/view/comic/single/comic_cubit.dart' as _i21;
import '../../domain/view/start/start_cubit.dart' as _i20;
import '../util/flavor/flavor_neocities.dart' as _i8;
import '../util/implementation/asset_reader_impl.dart' as _i5;
import '../util/implementation/local_storage_impl.dart' as _i10;
import '../util/implementation/logger_impl.dart' as _i12;

const String _neocities = 'neocities';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ArchiveCubit>(() => _i3.ArchiveCubit());
  gh.factory<_i4.AssetReader>(() => _i5.AssetReaderImpl());
  gh.factory<_i6.ComicGalleryCubit>(() => _i6.ComicGalleryCubit());
  gh.factory<_i7.Flavor>(() => _i8.FlavorNeocities(),
      registerFor: {_neocities});
  gh.factory<_i9.LocalStorage>(() => _i10.LocalStorageImpl());
  gh.factory<_i11.Logger>(() => _i12.LoggerImpl());
  gh.lazySingleton<_i13.Api>(() => _i13.Api(flavor: get<_i7.Flavor>()));
  gh.factory<_i14.ComicRepositoryLocal>(() => _i15.ComicRepositoryLocalImpl(
      get<_i4.AssetReader>(), get<_i9.LocalStorage>()));
  gh.factory<_i16.ComicRepositoryRemote>(
      () => _i17.ComicRepositoryRemoteImpl(api: get<_i13.Api>()));
  gh.factory<_i18.GetComicPanelsOperation>(() => _i18.GetComicPanelsOperation(
      comicRepositoryLocal: get<_i14.ComicRepositoryLocal>(),
      comicRepositoryRemote: get<_i16.ComicRepositoryRemote>(),
      logger: get<_i11.Logger>()));
  gh.factory<_i19.GetComicsOperation>(() => _i19.GetComicsOperation(
      comicRepositoryLocal: get<_i14.ComicRepositoryLocal>(),
      comicRepositoryRemote: get<_i16.ComicRepositoryRemote>(),
      logger: get<_i11.Logger>()));
  gh.factory<_i20.StartCubit>(() => _i20.StartCubit(
      getComicsOperation: get<_i19.GetComicsOperation>(),
      getComicPanelsOperation: get<_i18.GetComicPanelsOperation>()));
  gh.factory<_i21.ComicCubit>(() => _i21.ComicCubit(
      getComicPanelsOperation: get<_i18.GetComicPanelsOperation>()));
  return get;
}
