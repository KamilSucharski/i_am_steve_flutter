import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/api/comicAPI.dart';
import 'package:i_am_steve_flutter/data/mapper/comicMapper.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryRemote.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryRemoteImpl implements ComicRepositoryRemote {
  
  final ComicAPI _comicApi = GetIt.I.get<ComicAPI>();
  final ComicMapper _comicMapper = GetIt.I.get<ComicMapper>();

  @override
  Stream<List<Comic>> getComics() {
    return _comicApi
      .getComics()
      .map((comics) => comics
        .map((comic) => _comicMapper.map(comic))
        .toList()
    );
  }

  @override
  Stream<ByteData> getComicPanel(
    final int comicNumber,
    final int panelNumber
  ) {
    return _comicApi
      .getComicPanel(sprintf(
        Consts.COMIC_PANEL_FILE_NAME_FORMAT,
        [comicNumber, panelNumber]
      ));
  }
}