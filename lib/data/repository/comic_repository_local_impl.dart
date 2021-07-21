import 'dart:convert';

import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/domain/error/no_comic_panel_error.dart';
import 'package:i_am_steve_flutter/domain/error/no_comics_error.dart';
import 'package:rxdart/rxdart.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryLocalImpl implements ComicRepositoryLocal {

  final AssetReader _assetReader = GetIt.I.get<AssetReader>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();

  @override
  Stream<List<Comic>> getComicsFromAssets() {
    return _assetReader
      .getString(Consts.ASSETS_PRELOAD + Consts.COMIC_METADATA_FILE_NAME)
      .asStream()
      .map((comicsJson) => (jsonDecode(comicsJson) as List))
      .flatMapIterable((value) => Stream.value(value))
      .map((item) => Comic.fromJson(item))
      .toList()
      .asStream();
  }

  @override
  Stream<List<Comic>> getComicsFromLocalStorage() {
    return _localStorage
      .getObject<List>(Consts.KEY_COMIC_LIST)
      .map((list) {
        if (list == null) {
          throw NoComicsError();
        }
        return list;
      })
      .flatMapIterable((item) => Stream.value(item))
      .map((item) => Comic.fromJson(item))
      .toList()
      .asStream();
  }
  
  @override
  Stream<bool> saveComicsToLocalStorage(final List<Comic> comics) {
    return _localStorage.putObject(
      Consts.KEY_COMIC_LIST,
      comics
    );
  }
  
  @override
  Stream<Uint8List> getComicPanelFromAssets(
    final int comicNumber,
    final int panelNumber
  ) {
    final String fileName = sprintf(
      Consts.COMIC_PANEL_FILE_NAME_FORMAT,
      [comicNumber, panelNumber]
    );
    return _assetReader
      .getBytes(Consts.ASSETS_PRELOAD + fileName)
      .asStream()
      .map((bytes) => bytes.buffer.asUint8List());
  }

  @override
  Stream<Uint8List> getComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber
  ) {
    final String fileName = sprintf(
      Consts.COMIC_PANEL_FILE_NAME_FORMAT,
      [comicNumber, panelNumber]
    );
    return _localStorage
      .getFile(fileName)
      .map((file) {
        if (file == null) {
          throw NoComicPanelError();
        }
        return file.readAsBytesSync();
      });
  }

  @override
  Stream<Uint8List> saveComicPanelToLocalStorage(
    final int comicNumber,
    final int panelNumber,
    final Uint8List bytes
  ) {
    final String fileName = sprintf(
      Consts.COMIC_PANEL_FILE_NAME_FORMAT,
      [comicNumber, panelNumber]
    );
    return _localStorage
      .putFile(fileName, bytes)
      .map((file) => bytes);
  }
}