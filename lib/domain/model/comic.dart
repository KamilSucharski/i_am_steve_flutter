import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {

  const factory Comic({
    required int number,
    required String title,
    required String date
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}