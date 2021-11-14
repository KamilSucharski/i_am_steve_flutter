import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/logger.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetComicPanelsOperation implements Operation<Comic, Future<ComicPanels>> {
  final ComicRepositoryLocal comicRepositoryLocal;
  final ComicRepositoryRemote comicRepositoryRemote;
  final Logger logger;

  GetComicPanelsOperation({
    required final this.comicRepositoryLocal,
    required final this.comicRepositoryRemote,
    required final this.logger,
  });

  @override
  Future<ComicPanels> execute({
    required final Comic input,
  }) => _getFromAssets(comicNumber: input.number)
    .onError((error, s) {
      logger.error('Could not get comic panels from the assets. Trying local storage.');
      return _getFromLocalStorage(comicNumber: input.number);
    })
    .onError((error, s) {
      logger.error('Could not get comic panels from the local storage. Trying API.');
      return _getFromAPI(comicNumber: input.number);
    });

  Future<ComicPanels> _getFromAssets({
    required final int comicNumber,
  }) => _joinPanels(
    panel1Future: _getPanelFromAssets(
      comicNumber: comicNumber,
      panelNumber: 1,
    ),
    panel2Future: _getPanelFromAssets(
      comicNumber: comicNumber,
      panelNumber: 2,
    ),
    panel3Future: _getPanelFromAssets(
      comicNumber: comicNumber,
      panelNumber: 3,
    ),
    panel4Future: _getPanelFromAssets(
      comicNumber: comicNumber,
      panelNumber: 4,
    ),
  );

  Future<Uint8List> _getPanelFromAssets({
    required final int comicNumber,
    required final int panelNumber,
  }) => comicRepositoryLocal
    .getComicPanelFromAssets(
      comicNumber: comicNumber,
      panelNumber: panelNumber,
    )
    .then((panel) => comicRepositoryLocal
      .removeComicPanelFromLocalStorage(
        comicNumber: comicNumber,
        panelNumber: panelNumber
      )
      .then((_) => panel)
    );

  Future<ComicPanels> _getFromLocalStorage({
    required final int comicNumber,
  }) => _joinPanels(
    panel1Future: _getPanelFromLocalStorage(
      comicNumber: comicNumber,
      panelNumber: 1,
    ),
    panel2Future: _getPanelFromLocalStorage(
      comicNumber: comicNumber,
      panelNumber: 2,
    ),
    panel3Future: _getPanelFromLocalStorage(
      comicNumber: comicNumber,
      panelNumber: 3,
    ),
    panel4Future: _getPanelFromLocalStorage(
      comicNumber: comicNumber,
      panelNumber: 4,
    ),
  );

  Future<Uint8List> _getPanelFromLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
  }) => comicRepositoryLocal
    .getComicPanelFromLocalStorage(
      comicNumber: comicNumber,
      panelNumber: panelNumber,
    );

  Future<ComicPanels> _getFromAPI({
    required final int comicNumber,
  }) {
    return _joinPanels(
      panel1Future: _getPanelFromAPI(
        comicNumber: comicNumber,
        panelNumber: 1,
      ),
      panel2Future: _getPanelFromAPI(
        comicNumber: comicNumber,
        panelNumber: 2,
      ),
      panel3Future: _getPanelFromAPI(
        comicNumber: comicNumber,
        panelNumber: 3,
      ),
      panel4Future: _getPanelFromAPI(
        comicNumber: comicNumber,
        panelNumber: 4,
      ),
    );
  }

  Future<Uint8List> _getPanelFromAPI({
    required final int comicNumber,
    required final int panelNumber,
  }) {
    return comicRepositoryRemote
      .getComicPanel(
        comicNumber: comicNumber,
        panelNumber: panelNumber,
      )
      .then((bytes) => comicRepositoryLocal.saveComicPanelToLocalStorage(
        comicNumber: comicNumber,
        panelNumber: panelNumber,
        bytes: bytes,
      ));
  }

  Future<ComicPanels> _joinPanels({
    required final Future<Uint8List> panel1Future,
    required final Future<Uint8List> panel2Future,
    required final Future<Uint8List> panel3Future,
    required final Future<Uint8List> panel4Future,
  }) {
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