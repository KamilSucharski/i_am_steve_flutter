import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_gallery_state.freezed.dart';

@freezed
class ComicGalleryState with _$ComicGalleryState {
  const factory ComicGalleryState.initial() = Initial;
}