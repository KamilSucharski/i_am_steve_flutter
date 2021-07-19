import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

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

  const factory StartState.navigateToComics(final List<Comic> comics) = NavigateToComics;
}