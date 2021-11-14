import 'dart:convert';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/exception/no_comic_panel_exception.dart';
import 'package:i_am_steve_flutter/domain/exception/no_comics_exception.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:injectable/injectable.dart';
import 'package:sprintf/sprintf.dart';

@Injectable(as: ComicRepositoryLocal)
class ComicRepositoryLocalImpl implements ComicRepositoryLocal {

  final AssetReader _assetReader;
  final LocalStorage _localStorage;

  ComicRepositoryLocalImpl(this._assetReader, this._localStorage);

  @override
  Future<List<Comic>> getComicsFromAssets() => _assetReader
    .getString(assetName: Consts.assetsPreload + Consts.comicMetadataFileName)
    .then((comicsJson) => (jsonDecode(comicsJson) as List<dynamic>)
      .map((dynamic item) => Comic.fromJson(item as Map<String, dynamic>))
      .toList()
    );

  @override
  Future<List<Comic>> getComicsFromLocalStorage() => _localStorage
    .getObject<List<dynamic>>(
      key: Consts.keyComicList,
    )
    .then((list) {
      if (list == null) {
        throw NoComicsException();
      }
      return list
        .map((dynamic item) => Comic.fromJson(item as Map<String, dynamic>))
        .toList();
    });
  
  @override
  Future<bool> saveComicsToLocalStorage({
    required final List<Comic> comics,
  }) => _localStorage.putObject(
    key: Consts.keyComicList,
    object: comics
  );
  
  @override
  Future<Uint8List> getComicPanelFromAssets({
    required final int comicNumber,
    required final int panelNumber
  }) => sprintf(Consts.comicPanelFileNameFormat, [comicNumber, panelNumber])
    .let((fileName) => _assetReader.getBytes(assetName: Consts.assetsPreload + fileName))
    .then((bytes) => bytes.buffer.asUint8List());

  @override
  Future<Uint8List> getComicPanelFromLocalStorage({
    required final int comicNumber,
    required final int panelNumber
  }) => sprintf(Consts.comicPanelFileNameFormat, [comicNumber, panelNumber])
    .let((fileName) => _localStorage.getFile(
      key: fileName,
    ))
    .then((file) {
      if (file == null) {
        throw NoComicPanelException();
      }
      return file.readAsBytesSync();
    });

  @override
  Future<Uint8List> saveComicPanelToLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
    required final Uint8List bytes,
  }) => sprintf(Consts.comicPanelFileNameFormat, [comicNumber, panelNumber])
    .let((fileName) => _localStorage.putFile(
      key: fileName,
      bytes: bytes,
    ))
    .then((file) => bytes);

  @override
  Future<void> removeComicPanelFromLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
  }) => sprintf(Consts.comicPanelFileNameFormat, [comicNumber, panelNumber])
    .let((fileName) => _localStorage.removeFile(
      key: fileName,
    ));
}