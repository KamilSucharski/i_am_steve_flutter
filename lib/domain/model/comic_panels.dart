import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_panels.freezed.dart';

@freezed
abstract class ComicPanels with _$ComicPanels {

  const factory ComicPanels({
    required Uint8List panel1,
    required Uint8List panel2,
    required Uint8List panel3,
    required Uint8List panel4
  }) = _ComicPanels;
}