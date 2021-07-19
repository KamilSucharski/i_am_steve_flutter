import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

part 'comic_arguments.freezed.dart';

@freezed
abstract class ComicArguments with _$ComicArguments {

  const factory ComicArguments({
    required Comic comic
  }) = _ComicArguments;
}