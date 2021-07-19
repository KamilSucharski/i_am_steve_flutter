import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';

part 'comic_state.freezed.dart';

@freezed
abstract class  ComicState with _$ComicState {
  const factory ComicState.initial() = Initial;

  const factory ComicState.reload() = Reload;

  const factory ComicState.displayComic(
    final Comic comic,
    final ComicPanels comicPanels
  ) = DisplayComic;

  const factory ComicState.handleError(
    final Error error
  ) = HandleError;
}