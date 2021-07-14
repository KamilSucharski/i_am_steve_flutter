import 'dart:io';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryLocal {
  void saveComics(final List<Comic> comics);
  List<Comic>? loadComics();
  File saveComicPanel(final int comicNumber, final int panelNumber, final Uint8List bytes);
  File? loadComicPanel(final int comicNumber, final int panelNumber);
}