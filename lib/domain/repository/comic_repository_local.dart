import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryLocal {
  Future<List<Comic>> getComicsFromAssets();

  Future<List<Comic>> getComicsFromLocalStorage();

  Future<bool> saveComicsToLocalStorage(final List<Comic> comics);

  Future<Uint8List> getComicPanelFromAssets(
    final int comicNumber,
    final int panelNumber,
  );

  Future<Uint8List> getComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber,
  );

  Future<Uint8List> saveComicPanelToLocalStorage(
    final int comicNumber,
    final int panelNumber,
    final Uint8List bytes,
  );

  Future<void> removeComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber,
  );
}
