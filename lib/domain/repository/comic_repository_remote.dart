import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryRemote {
  Future<List<Comic>> getComics();

  Future<Uint8List> getComicPanel(
    final int comicNumber,
    final int panelNumber,
  );
}
