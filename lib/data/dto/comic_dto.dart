import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_dto.freezed.dart';
part 'comic_dto.g.dart';

@freezed
class ComicDto with _$ComicDto {

  const factory ComicDto({
    required int number,
    required String title,
    required String date
  }) = _ComicDto;

  factory ComicDto.fromJson(Map<String, dynamic> json) => _$ComicDtoFromJson(json);
}