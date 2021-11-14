import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';

part 'comic_state.freezed.dart';

@freezed
class ComicState with _$ComicState {
  const factory ComicState.initial() = Initial;

  const factory ComicState.displayComic({
    required final Key key,
    required final Comic comic,
    required final ComicPanels comicPanels
  }) = DisplayComic;

  const factory ComicState.showError({
    required final Key key,
    required final String message,
  }) = ShowError;
}