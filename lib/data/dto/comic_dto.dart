import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_dto.freezed.dart';
part 'comic_dto.g.dart';

@freezed
abstract class ComicDTO with _$ComicDTO {

  const factory ComicDTO({
    required int number,
    required String title,
    required String date
  }) = _ComicDTO;

  factory ComicDTO.fromJson(Map<String, dynamic> json) => _$ComicDTOFromJson(json);
}