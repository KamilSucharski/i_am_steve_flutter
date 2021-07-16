import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';

@freezed
abstract class Comic with _$Comic {

  const factory Comic({
    required int number,
    required String title,
    required String date
  }) = _Comic;
}