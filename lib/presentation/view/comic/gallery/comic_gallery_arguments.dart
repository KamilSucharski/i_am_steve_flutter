import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

part 'comic_gallery_arguments.freezed.dart';

@freezed
class ComicGalleryArguments with _$ComicGalleryArguments {

  const factory ComicGalleryArguments({
    required List<Comic> comics
  }) = _ComicGalleryArguments;
}