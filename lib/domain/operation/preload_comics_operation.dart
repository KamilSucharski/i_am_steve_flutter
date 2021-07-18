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

class PreloadComicsOperation implements Operation<Stream<void>> {
  final Logger _logger = GetIt.I.get<Logger>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();

  @override
  Stream<void> execute() {
    _logger.debug('Preloading started');
    return _localStorage
      .getInt(Consts.KEY_PRELOAD_VERSION)
      .asStream()
      .map((previousPreloadVersion) => previousPreloadVersion == null || previousPreloadVersion < Consts.PRELOAD_VERSION)
      .flatMap((shouldPerformPreload) => shouldPerformPreload
        ? _performPreload().map((_) => _logger.debug('Preloading completed'))
        : Stream.value(null)
      )
      .handleError((error, stackTrace) {
        _logger.error('Preloading failed', error);
      });
  }

  Stream<void> _performPreload() {
    return _preloadComicsList()
      .flatMap((comics) => _preloadComicPanels(comics));
  }

  Stream<List<Comic>> _preloadComicsList() {
    return _assetReader
      .getString(Consts.ASSETS_PRELOAD + Consts.COMIC_METADATA_FILE_NAME)
      .asStream()
      .map((comicsJson) => (jsonDecode(comicsJson) as List))
      .flatMapIterable((value) => Stream.value(value))
      .map((item) => Comic.fromJson(item))
      .toList()
      .asStream();
  }

  Stream<void> _preloadComicPanels(final List<Comic> comics) {
    final List<Stream<File>> fileStreams = [];

    comics.forEach((comic) {
      for (int panelNumber = 1; panelNumber <= 4; panelNumber++) {
        final String fileName = sprintf(
          Consts.COMIC_PANEL_FILE_NAME_FORMAT,
          [comic.number, panelNumber]
        );
        final Stream<File> fileStream = _assetReader
          .getBytes(Consts.ASSETS_PRELOAD + fileName)
          .then((bytes) => _localStorage.putFileBytes(fileName, bytes))
          .asStream();
        fileStreams.add(fileStream);
      }
    });

    return ZipStream(
      fileStreams,
      (list) {
        _localStorage.putObject(Consts.KEY_COMIC_LIST, comics);
        _localStorage.putInt(Consts.KEY_PRELOAD_VERSION, Consts.PRELOAD_VERSION);
      }
    );
  }
}