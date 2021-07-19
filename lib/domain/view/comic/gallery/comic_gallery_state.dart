import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/model/comic_panels.dart';

part 'comic_gallery_state.freezed.dart';

@freezed
abstract class  ComicGalleryState with _$ComicGalleryState {
  const factory ComicGalleryState.initial() = Initial;
}