import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/api/comic_api.dart';
import 'package:i_am_steve_flutter/data/mapper/comic_mapper.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryRemoteImpl implements ComicRepositoryRemote {
  
  final ComicApi _comicApi;
  final ComicMapper _comicMapper;

  ComicRepositoryRemoteImpl(this._comicApi, this._comicMapper);

  @override
  Stream<List<Comic>> getComics() {
    return _comicApi
      .getComics()
      .asStream()
      .map((comics) => comics
        .map((comic) => _comicMapper.map(comic))
        .toList()
    );
  }

  @override
  Stream<Uint8List> getComicPanel(
    final int comicNumber,
    final int panelNumber
  ) {
    return _comicApi
      .getComicPanel(sprintf(
        Consts.COMIC_PANEL_FILE_NAME_FORMAT,
        [comicNumber, panelNumber]
      ))
      .asStream()
      .map((value) => _convertStringToUint8List(value));
  }

  Uint8List _convertStringToUint8List(final String source) {
    final List<int> list = [];
    source.runes.forEach((rune) {
      if (rune >= 0x10000) {
        rune -= 0x10000;
        final int firstWord = (rune >> 10) + 0xD800;
        list.add(firstWord >> 8);
        list.add(firstWord & 0xFF);
        final int secondWord = (rune & 0x3FF) + 0xDC00;
        list.add(secondWord >> 8);
        list.add(secondWord & 0xFF);
      }
      else {
        list.add(rune >> 8);
        list.add(rune & 0xFF);
      }
    });
    return Uint8List.fromList(list);
  }
}