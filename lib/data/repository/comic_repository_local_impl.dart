import 'dart:convert';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/error/no_comic_panel_error.dart';
import 'package:i_am_steve_flutter/domain/error/no_comics_error.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:sprintf/sprintf.dart';

class ComicRepositoryLocalImpl implements ComicRepositoryLocal {

  final AssetReader _assetReader;
  final LocalStorage _localStorage;

  ComicRepositoryLocalImpl(this._assetReader, this._localStorage);

  @override
  Future<List<Comic>> getComicsFromAssets() {
    return _assetReader
      .getString(Consts.assetsPreload + Consts.comicMetadataFileName)
      .then((comicsJson) => (jsonDecode(comicsJson) as List<dynamic>)
        .map((dynamic item) => Comic.fromJson(item as Map<String, dynamic>))
        .toList()
      );
  }

  @override
  Future<List<Comic>> getComicsFromLocalStorage() {
    return _localStorage
      .getObject<List<Map<String, dynamic>>>(Consts.keyComicList)
      .then((list) {
        if (list == null) {
          throw NoComicsError();
        }
        return list
          .map((item) => Comic.fromJson(item))
          .toList();
      });
  }
  
  @override
  Future<bool> saveComicsToLocalStorage(final List<Comic> comics) {
    return _localStorage.putObject(
      Consts.keyComicList,
      comics
    );
  }
  
  @override
  Future<Uint8List> getComicPanelFromAssets(
    final int comicNumber,
    final int panelNumber
  ) {
    final String fileName = sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber]
    );
    return _assetReader
      .getBytes(Consts.assetsPreload + fileName)
      .then((bytes) => bytes.buffer.asUint8List());
  }

  @override
  Future<Uint8List> getComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber
  ) {
    final String fileName = sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber]
    );
    return _localStorage
      .getFile(fileName)
      .then((file) {
        if (file == null) {
          throw NoComicPanelError();
        }
        return file.readAsBytesSync();
      });
  }

  @override
  Future<Uint8List> saveComicPanelToLocalStorage(
    final int comicNumber,
    final int panelNumber,
    final Uint8List bytes
  ) {
    final String fileName = sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber]
    );
    return _localStorage
      .putFile(fileName, bytes)
      .then((file) => bytes);
  }

  @override
  Future<void> removeComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber
  ) {
    final String fileName = sprintf(
      Consts.comicPanelFileNameFormat,
      [comicNumber, panelNumber]
    );
    return _localStorage.removeFile(fileName);
  }
}