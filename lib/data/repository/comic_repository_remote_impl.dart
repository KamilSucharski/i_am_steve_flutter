import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/api/api.dart';
import 'package:i_am_steve_flutter/data/mapper/comic_mapper.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:injectable/injectable.dart';
import 'package:sprintf/sprintf.dart';

@Injectable(as: ComicRepositoryRemote)
class ComicRepositoryRemoteImpl implements ComicRepositoryRemote {
  final Api api;

  ComicRepositoryRemoteImpl({
    required final this.api,
  });

  @override
  Future<List<Comic>> getComics() => api
    .client
    .getComics()
    .then((comics) => comics
      .map((comic) => ComicMapper().map(comic)).toList()
    );

  @override
  Future<Uint8List> getComicPanel({
    required final int comicNumber,
    required final int panelNumber,
  }) => api
    .client
    .getComicPanel(sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber],
    ))
    .then((bytes) => Uint8List.fromList(bytes));
}
