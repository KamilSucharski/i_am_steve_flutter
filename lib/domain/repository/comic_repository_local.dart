import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryLocal {

  Stream<List<Comic>> getComicsFromAssets();
  Stream<List<Comic>> getComicsFromLocalStorage();
  Stream<bool> saveComicsToLocalStorage(final List<Comic> comics);

  Stream<Uint8List> getComicPanelFromAssets(
    final int comicNumber,
    final int panelNumber
  );
  Stream<Uint8List> getComicPanelFromLocalStorage(
    final int comicNumber,
    final int panelNumber
  );
  Stream<Uint8List> saveComicPanelToLocalStorage(
    final int comicNumber,
    final int panelNumber,
    final Uint8List bytes
  );
}