import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_local.dart';
import 'package:i_am_steve_flutter/domain/repository/comic_repository_remote.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:rxdart/rxdart.dart';

class GetComicPanelsOperation implements Operation<Stream<ComicPanels>> {
  final Comic _comic;
  final ComicRepositoryLocal _comicRepositoryLocal = GetIt.I.get<ComicRepositoryLocal>();
  final ComicRepositoryRemote _comicRepositoryRemote = GetIt.I.get<ComicRepositoryRemote>();

  GetComicPanelsOperation(this._comic);

  @override
  Stream<ComicPanels> execute() {
    return _getExistingComicPanels()
      .asStream()
      .flatMap((existingComicPanels) => existingComicPanels != null
        ? Stream.value(existingComicPanels)
        : _getNewComicPanels()
      );
  }

  Future<ComicPanels?> _getExistingComicPanels() async {
    final File? panel1 = await _comicRepositoryLocal.loadComicPanel(_comic.number, 1);
    final File? panel2 = await _comicRepositoryLocal.loadComicPanel(_comic.number, 2);
    final File? panel3 = await _comicRepositoryLocal.loadComicPanel(_comic.number, 3);
    final File? panel4 = await _comicRepositoryLocal.loadComicPanel(_comic.number, 4);
    if (panel1 != null && panel2 != null && panel3 != null && panel4 != null) {
      return ComicPanels(
        panel1: panel1,
        panel2: panel2,
        panel3: panel3,
        panel4: panel4
      );
    } else {
      return null;
    }
  }

  Stream<ComicPanels> _getNewComicPanels() {
    final List<Stream<File>> panelStreams = [];
    for (int panelNumber = 0; panelNumber < 4; panelNumber++) {
      final Stream<File> panelStream = _comicRepositoryRemote
          .getComicPanel(_comic.number, panelNumber)
          .flatMap((bytes) {
        return _comicRepositoryLocal.saveComicPanel(
            _comic.number,
            panelNumber,
            bytes
        ).asStream();
      });
      panelStreams.add(panelStream);
    }

    return ZipStream.zip4<File, File, File, File, ComicPanels>(
        panelStreams[0],
        panelStreams[1],
        panelStreams[2],
        panelStreams[3],
        (panel1, panel2, panel3, panel4) => ComicPanels(
          panel1: panel1,
          panel2: panel2,
          panel3: panel3,
          panel4: panel4
        )
    );
  }
}