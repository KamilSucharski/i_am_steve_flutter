import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/asset_reader.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';

class GetComicPanelsOperation implements Operation<Stream<ComicPanels>> {
  final Comic _comic;
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();
  final AssetReader _assetReader = GetIt.I.get<AssetReader>();
  final Logger _logger = GetIt.I.get<Logger>();

  GetComicPanelsOperation(this._comic);

  @override
  Stream<ComicPanels> execute() {
    return _getFromAssets()
      .onErrorResume((error, s) {
        _logger.error('Could not get comic panels from the assets. Trying local storage.');
        return _getFromLocalStorage();
      })
      .onErrorResume((error, s) {
        _logger.error('Could not get comic panels from the local storage. Trying API.');
        return _getFromAPI();
      });
  }

  Stream<ComicPanels> _getFromAssets() {
    return _joinPanels(
      _getPanelFromAssets(1),
      _getPanelFromAssets(2),
      _getPanelFromAssets(3),
      _getPanelFromAssets(4)
    );
  }

  Stream<Uint8List> _getPanelFromAssets(final int panelNumber) {
    final String fileName = sprintf(
      Consts.COMIC_PANEL_FILE_NAME_FORMAT,
      [_comic.number, panelNumber]
    );
    return _assetReader
      .getBytes(Consts.ASSETS_PRELOAD + fileName)
      .asStream()
      .map((bytes) => bytes.buffer.asUint8List());
  }

  Stream<ComicPanels> _getFromLocalStorage() {
    return _joinPanels(
      _getPanelFromLocalStorage(1),
      _getPanelFromLocalStorage(2),
      _getPanelFromLocalStorage(3),
      _getPanelFromLocalStorage(4)
    );
  }

  Stream<Uint8List> _getPanelFromLocalStorage(final int panelNumber) {
    return _comicRepositoryLocal
      .loadComicPanel(_comic.number, panelNumber)
      .asStream()
      .map((file) => file!.readAsBytesSync());
  }

  Stream<ComicPanels> _getFromAPI() {
    return _joinPanels(
      _getPanelFromAPI(1),
      _getPanelFromAPI(2),
      _getPanelFromAPI(3),
      _getPanelFromAPI(4)
    );
  }

  Stream<Uint8List> _getPanelFromAPI(final int panelNumber) {
    return _comicRepositoryRemote
      .getComicPanel(_comic.number, panelNumber)
      .asStream()
      .flatMap((panelString) =>_comicRepositoryLocal
        .saveComicPanel(_comic.number, panelNumber, panelString)
        .asStream()
      )
      .map((file) => file.readAsBytesSync());
  }

  Stream<ComicPanels> _joinPanels(
    final Stream<Uint8List> panel1Stream,
    final Stream<Uint8List> panel2Stream,
    final Stream<Uint8List> panel3Stream,
    final Stream<Uint8List> panel4Stream,
  ) {
    return ZipStream.zip4<Uint8List, Uint8List, Uint8List, Uint8List, ComicPanels>(
      panel1Stream,
      panel2Stream,
      panel3Stream,
      panel4Stream,
      (panel1, panel2, panel3, panel4) => ComicPanels(
        panel1: panel1,
        panel2: panel2,
        panel3: panel3,
        panel4: panel4
      )
    );
  }
}