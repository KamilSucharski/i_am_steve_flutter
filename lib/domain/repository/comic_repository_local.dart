import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/model/comic.dart';

abstract class ComicRepositoryLocal {
  Future<List<Comic>> getComicsFromAssets();

  Future<List<Comic>> getComicsFromLocalStorage();

  Future<bool> saveComicsToLocalStorage({
    required final List<Comic> comics,
  });

  Future<Uint8List> getComicPanelFromAssets({
    required final int comicNumber,
    required final int panelNumber,
  });

  Future<Uint8List> getComicPanelFromLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
  });

  Future<Uint8List> saveComicPanelToLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
    required final Uint8List bytes,
  });

  Future<void> removeComicPanelFromLocalStorage({
    required final int comicNumber,
    required final int panelNumber,
  });
}
