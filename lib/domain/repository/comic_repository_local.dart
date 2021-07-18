import 'dart:io';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryLocal {
  Future<bool> saveComics(final List<Comic> comics);
  Future<List<Comic>?> loadComics();
  Future<File> saveComicPanel(final int comicNumber, final int panelNumber, final String panelString);
  Future<File?> loadComicPanel(final int comicNumber, final int panelNumber);
}