import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_gallery_state.freezed.dart';

@freezed
class ComicGalleryState with _$ComicGalleryState {
  const factory ComicGalleryState.initial() = Initial;

  const factory ComicGalleryState.setButtonsVisibility({
    required final Key key,
    required final bool previousButtonVisible,
    required final bool nextButtonVisible,
  }) = SetButtonsVisibility;

  const factory ComicGalleryState.navigateToArchive({
    required final Key key
  }) = NavigateToArchive;
}