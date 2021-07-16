import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/exception/noComicsException.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryLocal.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryRemote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class GetComicsOperation implements Operation<Stream<List<Comic>>> {
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();
  final Logger _logger = GetIt.I.get<Logger>();

  @override
  Stream<List<Comic>> execute() {
    return _comicRepositoryRemote.getComics().map((comics) {
      _comicRepositoryLocal.saveComics(comics);
      return comics;
    }).handleError((error) {
      _logger.error('Error getting comics', error);
      _comicRepositoryLocal
          .loadComics()
          .then((localComics) => localComics != null
              ? Stream.value(localComics)
              : Stream.error(NoComicsException()))
          .asStream();
    });
  }
}
