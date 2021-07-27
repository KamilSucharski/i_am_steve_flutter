import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';

class GetComicPanelsOperation implements Operation<Comic, Future<ComicPanels>> {
  final ComicRepositoryLocal _comicRepositoryLocal;
  final ComicRepositoryRemote _comicRepositoryRemote;
  final Logger _logger;

  GetComicPanelsOperation(this._comicRepositoryLocal, this._comicRepositoryRemote, this._logger);

  @override
  Future<ComicPanels> execute(final Comic input) {
    return _getFromAssets(input.number)
      .onError((error, s) {
        _logger.error('Could not get comic panels from the assets. Trying local storage.');
        return _getFromLocalStorage(input.number);
      })
      .onError((error, s) {
        _logger.error('Could not get comic panels from the local storage. Trying API.');
        return _getFromAPI(input.number);
      });
  }

  Future<ComicPanels> _getFromAssets(final int comicNumber) {
    return _joinPanels(
      _getPanelFromAssets(comicNumber, 1),
      _getPanelFromAssets(comicNumber, 2),
      _getPanelFromAssets(comicNumber, 3),
      _getPanelFromAssets(comicNumber, 4)
    );
  }

  Future<Uint8List> _getPanelFromAssets(final int comicNumber, final int panelNumber) {
    return _comicRepositoryLocal
      .getComicPanelFromAssets(comicNumber, panelNumber)
      .then((panel) => _comicRepositoryLocal
        .removeComicPanelFromLocalStorage(comicNumber, panelNumber)
        .then((_) => panel)
      );
  }

  Future<ComicPanels> _getFromLocalStorage(final int comicNumber) {
    return _joinPanels(
      _getPanelFromLocalStorage(comicNumber, 1),
      _getPanelFromLocalStorage(comicNumber, 2),
      _getPanelFromLocalStorage(comicNumber, 3),
      _getPanelFromLocalStorage(comicNumber, 4)
    );
  }

  Future<Uint8List> _getPanelFromLocalStorage(final int comicNumber, final int panelNumber) {
    return _comicRepositoryLocal
      .getComicPanelFromLocalStorage(comicNumber, panelNumber);
  }

  Future<ComicPanels> _getFromAPI(final int comicNumber) {
    return _joinPanels(
      _getPanelFromAPI(comicNumber, 1),
      _getPanelFromAPI(comicNumber, 2),
      _getPanelFromAPI(comicNumber, 3),
      _getPanelFromAPI(comicNumber, 4)
    );
  }

  Future<Uint8List> _getPanelFromAPI(final int comicNumber, final int panelNumber) {
    return _comicRepositoryRemote
      .getComicPanel(comicNumber, panelNumber)
      .then((panelString) =>_comicRepositoryLocal
        .saveComicPanelToLocalStorage(comicNumber, panelNumber, panelString)
      );
  }

  Future<ComicPanels> _joinPanels(
    final Future<Uint8List> panel1Future,
    final Future<Uint8List> panel2Future,
    final Future<Uint8List> panel3Future,
    final Future<Uint8List> panel4Future,
  ) {
    return Future
      .wait([panel1Future, panel2Future, panel3Future, panel4Future])
      .then((panels) => ComicPanels(
        panel1: panels[0],
        panel2: panels[1],
        panel3: panels[2],
        panel4: panels[3]
    ));
  }
}