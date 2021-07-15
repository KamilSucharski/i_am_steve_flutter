import 'dart:convert';
import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/assetReader.dart';
import 'package:i_am_steve_flutter/domain/util/configuration.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/localStorage.dart';
import 'package:i_am_steve_flutter/domain/util/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class PreloadComicsOperation implements Operation<Stream<bool>> {
  final Logger _logger = GetIt.I.get<Logger>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();
  final Configuration _configuration = GetIt.I.get<Configuration>();

  @override
  Stream<bool> execute() {
    _logger.debug('Preloading started');

    final int? previousPreloadVersion = _localStorage.getInt(Consts.KEY_PRELOAD_VERSION);
    final int currentPreloadVersion = _configuration.getAppVersion();
    if (previousPreloadVersion != null && previousPreloadVersion >= currentPreloadVersion) {
      _logger.debug('Preloading cancelled');
      return Stream.value(false);
    }

    return _assetReader
      .getString(Consts.COMIC_METADATA_FILE_NAME)
      .map((comicsJson) => jsonDecode(comicsJson) as List<Comic>)
      .flatMap((comics) => _saveImageAssetsToLocalStorage(
        comics,
        currentPreloadVersion
      ));
  }

  Stream<bool> _saveImageAssetsToLocalStorage(
    final List<Comic> comics,
    final int currentPreloadVersion
  ) {
    final List<Stream<File>> fileStreams = [];

    comics.forEach((comic) {
      for (int panelNumber = 1; panelNumber <= 4; panelNumber++) {
        final String fileName = sprintf(
            Consts.COMIC_PANEL_FILE_NAME_FORMAT, [comic.number, panelNumber]);
        final Stream<File> fileStream = _assetReader
            .getBytes(fileName)
            .map((bytes) => _localStorage.putFile(fileName, bytes));
        fileStreams.add(fileStream);
      }
    });

    return ZipStream(
      fileStreams,
      (list) => saveComicsAndUpdatePreloadVersion(comics, currentPreloadVersion)
    );
  }

  bool saveComicsAndUpdatePreloadVersion(
    final List<Comic> comics,
    final int currentPreloadVersion
  ) {
    _localStorage.putObject(
      Consts.KEY_COMIC_LIST,
      comics
    );
    _localStorage.putInt(
      Consts.KEY_PRELOAD_VERSION,
      _configuration.getAppVersion()
    );
    _logger.debug('Preloading finished');
    return true;
  }
}
