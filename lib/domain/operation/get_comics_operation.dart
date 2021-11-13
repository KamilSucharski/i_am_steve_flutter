import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:i_am_steve_flutter/domain/util/unit.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetComicsOperation implements Operation<Unit, Future<List<Comic>>> {
  final ComicRepositoryLocal comicRepositoryLocal;
  final ComicRepositoryRemote comicRepositoryRemote;
  final Logger logger;

  GetComicsOperation({
    required final this.comicRepositoryLocal,
    required final this.comicRepositoryRemote,
    required final this.logger,
  });

  @override
  Future<List<Comic>> execute({
    required final Unit input
  }) => _getFromAPI()
    .onError((error, s) {
      logger.error('Could not get comics.json from the API. Trying local storage.');
      return _getFromLocalStorage();
    })
    .onError((error, s) {
      logger.error('Could not get comics.json from the local storage. Trying assets.');
      return _getFromAssets();
    });

  Future<List<Comic>> _getFromAPI() => comicRepositoryRemote
    .getComics()
    .then((comics) => comicRepositoryLocal
      .saveComicsToLocalStorage(comics: comics)
      .then((_) => comics)
    );

  Future<List<Comic>> _getFromLocalStorage() => comicRepositoryLocal
    .getComicsFromLocalStorage();

  Future<List<Comic>> _getFromAssets() => comicRepositoryLocal
    .getComicsFromAssets();
}