import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:rxdart/rxdart.dart';

class GetComicPanelsOperation implements Operation<Comic, Stream<ComicPanels>> {
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();
  final Logger _logger = GetIt.I.get<Logger>();

  @override
  Stream<ComicPanels> execute(final Comic input) {
    return _getFromAssets(input.number)
      .onErrorResume((error, s) {
        _logger.error('Could not get comic panels from the assets. Trying local storage.');
        return _getFromLocalStorage(input.number);
      })
      .onErrorResume((error, s) {
        _logger.error('Could not get comic panels from the local storage. Trying API.');
        return _getFromAPI(input.number);
      });
  }

  Stream<ComicPanels> _getFromAssets(final int comicNumber) {
    return _joinPanels(
      _getPanelFromAssets(comicNumber, 1),
      _getPanelFromAssets(comicNumber, 2),
      _getPanelFromAssets(comicNumber, 3),
      _getPanelFromAssets(comicNumber, 4)
    );
  }

  Stream<Uint8List> _getPanelFromAssets(final int comicNumber, final int panelNumber) {
    return _comicRepositoryLocal
      .getComicPanelFromAssets(comicNumber, panelNumber);
  }

  Stream<ComicPanels> _getFromLocalStorage(final int comicNumber) {
    return _joinPanels(
      _getPanelFromLocalStorage(comicNumber, 1),
      _getPanelFromLocalStorage(comicNumber, 2),
      _getPanelFromLocalStorage(comicNumber, 3),
      _getPanelFromLocalStorage(comicNumber, 4)
    );
  }

  Stream<Uint8List> _getPanelFromLocalStorage(final int comicNumber, final int panelNumber) {
    return _comicRepositoryLocal
      .getComicPanelFromLocalStorage(comicNumber, panelNumber);
  }

  Stream<ComicPanels> _getFromAPI(final int comicNumber) {
    return _joinPanels(
      _getPanelFromAPI(comicNumber, 1),
      _getPanelFromAPI(comicNumber, 2),
      _getPanelFromAPI(comicNumber, 3),
      _getPanelFromAPI(comicNumber, 4)
    );
  }

  Stream<Uint8List> _getPanelFromAPI(final int comicNumber, final int panelNumber) {
    return _comicRepositoryRemote
      .getComicPanel(comicNumber, panelNumber)
      .flatMap((panelString) =>_comicRepositoryLocal
        .saveComicPanelToLocalStorage(comicNumber, panelNumber, panelString)
      );
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