import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_state.freezed.dart';

@freezed
abstract class  StartState with _$StartState {
  const factory StartState.initial() = Initial;

  const factory StartState.loading(
    final int done,
    final int all
  ) = Loading;

  const factory StartState.handleError(
    final Error error
  ) = HandleError;

  const factory StartState.navigateToComics() = NavigateToComics;
}