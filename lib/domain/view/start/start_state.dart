import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_state.freezed.dart';

@freezed
abstract class  StartState with _$StartState {
  const factory StartState.initial() = Initial;

  const factory StartState.loading(
    int done,
    int all
  ) = Loading;

  const factory StartState.navigateToComics() = NavigateToComics;
}