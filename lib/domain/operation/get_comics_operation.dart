import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/error/no_comics_error.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class GetComicsOperation implements Operation<Future<List<Comic>>> {
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();
  final Logger _logger = GetIt.I.get<Logger>();

  @override
  Future<List<Comic>> execute() async {
    return _comicRepositoryRemote.getComics().then((comics) {
      _comicRepositoryLocal.saveComics(comics);
      return comics;
    }).catchError((error) {
      _logger.error('Error getting comics', error);
      _comicRepositoryLocal.loadComics().then((localComics) {
        if (localComics != null) {
          return localComics;
        } else {
          throw NoComicsError();
        }
      });
    });
  }
}
