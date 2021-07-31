import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/data/mapper/comic_mapper.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryRemoteImpl implements ComicRepositoryRemote {
  final ComicApi _comicApi;

  ComicRepositoryRemoteImpl(this._comicApi);

  @override
  Future<List<Comic>> getComics() {
    return _comicApi
      .getComics()
      .then((comics) => comics
        .map((comic) => ComicMapper().map(comic)).toList()
      );
  }

  @override
  Future<Uint8List> getComicPanel(
    final int comicNumber,
    final int panelNumber,
  ) {
    return _comicApi.getComicPanel(sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber],
    ));
  }
}
