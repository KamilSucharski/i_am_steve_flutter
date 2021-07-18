import 'dart:convert';
import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class PreloadComicsOperation implements Operation<Future<void>> {
  final Logger _logger = GetIt.I.get<Logger>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();

  @override
  Future<void> execute() async {
    _logger.debug('Preloading started');
    final int? previousPreloadVersion = await _localStorage.getInt(
      Consts.KEY_PRELOAD_VERSION
    );
    if (previousPreloadVersion != null && previousPreloadVersion >= Consts.PRELOAD_VERSION) {
      return;
    }

    return _performPreload()
      .then((value) {
        _logger.debug('Preloading completed');
      })
      .onError((error, stackTrace) {
        _logger.error('Preloading failed');
      });
  }

  Future<void> _performPreload() async {
    final List<Comic> comics = await _assetReader
      .getString(Consts.ASSETS_PRELOAD + Consts.COMIC_METADATA_FILE_NAME)
      .then((comicsJson) => (jsonDecode(comicsJson) as List))
      .asStream()
      .flatMapIterable((value) => Stream.value(value))
      .map((item) => Comic.fromJson(item))
      .toList();

    final List<Stream<File>> fileStreams = [];

    comics.forEach((comic) {
      for (int panelNumber = 1; panelNumber <= 4; panelNumber++) {
        final String fileName = sprintf(
          Consts.COMIC_PANEL_FILE_NAME_FORMAT,
          [comic.number, panelNumber]
        );
        final Stream<File> fileStream = _assetReader
          .getString(Consts.ASSETS_PRELOAD + fileName)
          .then((string) => _localStorage.putFile(fileName, string))
          .asStream();
        fileStreams.add(fileStream);
      }
    });

    return ZipStream(
      fileStreams,
      (list) {
        _localStorage.putObject(
          Consts.KEY_COMIC_LIST,
          comics
        );
        _localStorage.putInt(
          Consts.KEY_PRELOAD_VERSION,
          Consts.PRELOAD_VERSION
        );
      }
    ).first;
  }
}