import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryRemote {
  Stream<List<Comic>> getComics();
  Stream<Uint8List> getComicPanel(final int comicNumber, final int panelNumber);
}