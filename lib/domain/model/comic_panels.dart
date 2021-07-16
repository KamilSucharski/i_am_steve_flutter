import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_panels.freezed.dart';

@freezed
abstract class ComicPanels with _$ComicPanels {

  const factory ComicPanels({
    required File panel1,
    required File panel2,
    required File panel3,
    required File panel4
  }) = _ComicPanels;
}