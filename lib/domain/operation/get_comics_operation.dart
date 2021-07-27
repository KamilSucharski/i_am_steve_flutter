import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class GetComicsOperation implements Operation<void, Future<List<Comic>>> {
  final ComicRepositoryLocal _comicRepositoryLocal;
  final ComicRepositoryRemote _comicRepositoryRemote;
  final Logger _logger;

  GetComicsOperation(
    this._comicRepositoryLocal,
    this._comicRepositoryRemote,
    this._logger,
  );

  @override
  Future<List<Comic>> execute(final void input) {
    return _getFromAPI()
      .onError((error, s) {
        _logger.error('Could not get comics.json from the API. Trying local storage.');
        return _getFromLocalStorage();
      })
      .onError((error, s) {
        _logger.error('Could not get comics.json from the local storage. Trying assets.');
        return _getFromAssets();
      });
  }

  Future<List<Comic>> _getFromAPI() {
    return _comicRepositoryRemote
      .getComics()
      .then((comics) => _comicRepositoryLocal
        .saveComicsToLocalStorage(comics)
        .then((_) => comics)
      );
  }

  Future<List<Comic>> _getFromLocalStorage() {
    return _comicRepositoryLocal.getComicsFromLocalStorage();
  }

  Future<List<Comic>> _getFromAssets() {
    return _comicRepositoryLocal.getComicsFromAssets();
  }
}