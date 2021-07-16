import 'dart:convert';
import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/assetReader.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/localStorage.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class PreloadComicsOperation implements Operation<Stream<bool>> {
  final Logger _logger = GetIt.I.get<Logger>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();

  @override
  Stream<bool> execute() {
    _logger.debug('Preloading started');

    return _localStorage
      .getInt(Consts.KEY_PRELOAD_VERSION)
      .asStream()
      .map((previousPreloadVersion) =>
        previousPreloadVersion != null
        && previousPreloadVersion >= Consts.PRELOAD_VERSION
      )
      .flatMap((alreadyHasUpToDatePreload) => alreadyHasUpToDatePreload
        ? Stream.value(false)
        : _performPreload()
      );
  }

  Stream<bool> _performPreload() {
    return _assetReader
        .getString(Consts.COMIC_METADATA_FILE_NAME)
        .map((comicsJson) => jsonDecode(comicsJson) as List<Comic>)
        .flatMap((comics) => _saveImageAssetsToLocalStorage(
        comics
    ));
  }

  Stream<bool> _saveImageAssetsToLocalStorage(final List<Comic> comics) {
    final List<Stream<File>> fileStreams = [];

    comics.forEach((comic) {
      for (int panelNumber = 1; panelNumber <= 4; panelNumber++) {
        final String fileName = sprintf(
          Consts.COMIC_PANEL_FILE_NAME_FORMAT,
          [comic.number, panelNumber]
        );
        final Stream<File> fileStream = _assetReader
          .getBytes(fileName)
          .flatMap((bytes) => _localStorage.putFile(fileName, bytes).asStream());
        fileStreams.add(fileStream);
      }
    });

    return ZipStream(
      fileStreams,
      (list) => saveComicsAndUpdatePreloadVersion(comics)
    );
  }

  bool saveComicsAndUpdatePreloadVersion(final List<Comic> comics) {
    _localStorage.putObject(
      Consts.KEY_COMIC_LIST,
      comics
    );
    _localStorage.putInt(
      Consts.KEY_PRELOAD_VERSION,
      Consts.PRELOAD_VERSION
    );
    _logger.debug('Preloading finished');
    return true;
  }
}