import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:rxdart/rxdart.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class GetComicsOperation implements Operation<Stream<List<Comic>>> {
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();
  final Logger _logger = GetIt.I.get<Logger>();

  @override
  Stream<List<Comic>> execute() {
    return _getFromAPI().onErrorResume((apiError, s1) {
      _logger.error(
        'Could not get comics.json from the API. Trying local storage.'
      );
      return _getFromLocalStorage().onErrorResume((localStorageError, s2) {
        _logger.error(
          'Could not get comics.json from the local storage. Trying assets.'
        );
        return _getFromAssets();
      });
    });
  }

  Stream<List<Comic>> _getFromAPI() {
    return _comicRepositoryRemote
      .getComics()
      .asStream()
      .flatMap((comics) => _comicRepositoryLocal
        .saveComics(comics)
        .asStream()
        .map((_) => comics)
      );
  }

  Stream<List<Comic>> _getFromLocalStorage() {
    return _comicRepositoryLocal
      .loadComics()
      .asStream()
      .map((comics) => comics!);
  }

  Stream<List<Comic>> _getFromAssets() {
    return _assetReader
      .getString(Consts.ASSETS_PRELOAD + Consts.COMIC_METADATA_FILE_NAME)
      .asStream()
      .map((comicsJson) => (jsonDecode(comicsJson) as List))
      .flatMapIterable((value) => Stream.value(value))
      .map((item) => Comic.fromJson(item))
      .toList()
      .asStream();
  }
}