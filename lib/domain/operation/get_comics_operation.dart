import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:rxdart/rxdart.dart';

class GetComicsOperation implements Operation<void, Stream<List<Comic>>> {
  final ComicRepositoryLocal _comicRepositoryLocal;
  final ComicRepositoryRemote _comicRepositoryRemote;
  final Logger _logger;

  GetComicsOperation(this._comicRepositoryLocal, this._comicRepositoryRemote, this._logger);

  @override
  Stream<List<Comic>> execute(final void input) {
    return _getFromAPI()
      .onErrorResume((error, s) {
        _logger.error('Could not get comics.json from the API. Trying local storage.');
        return _getFromLocalStorage();
      })
      .onErrorResume((error, s) {
        _logger.error('Could not get comics.json from the local storage. Trying assets.');
        return _getFromAssets();
      });
  }

  Stream<List<Comic>> _getFromAPI() {
    return _comicRepositoryRemote
      .getComics()
      .flatMap((comics) => _comicRepositoryLocal
        .saveComicsToLocalStorage(comics)
        .map((_) => comics)
      );
  }

  Stream<List<Comic>> _getFromLocalStorage() {
    return _comicRepositoryLocal
      .getComicsFromLocalStorage();
  }

  Stream<List<Comic>> _getFromAssets() {
    return _comicRepositoryLocal
      .getComicsFromAssets();
  }
}