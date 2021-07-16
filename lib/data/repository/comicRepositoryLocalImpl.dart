import 'dart:io';

import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comicRepositoryLocal.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/localStorage.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryLocalImpl implements ComicRepositoryLocal {

  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();

  @override
  Future<bool> saveComics(final List<Comic> comics) {
    return _localStorage.putObject(
      Consts.KEY_COMIC_LIST,
      comics
    );
  }

  @override
  Future<List<Comic>?> loadComics() {
    return _localStorage.getObject<List<Comic>>(
      Consts.KEY_COMIC_LIST
    );
  }

  @override
  Future<File> saveComicPanel(
    final int comicNumber,
    final int panelNumber,
    final ByteData bytes
  ) {
    return _localStorage.putFile(
        sprintf(
          Consts.COMIC_PANEL_FILE_NAME_FORMAT,
          [comicNumber, panelNumber]
        ),
        bytes
    );
  }

  @override
  Future<File?> loadComicPanel(
    final int comicNumber,
    final int panelNumber
  ) {
    return _localStorage.getFile(
      sprintf(
        Consts.COMIC_PANEL_FILE_NAME_FORMAT,
        [comicNumber, panelNumber]
      )
    );
  }
}