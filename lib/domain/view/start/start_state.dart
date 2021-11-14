import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

part 'start_state.freezed.dart';

@freezed
class StartState with _$StartState {
  const factory StartState.initial() = Initial;

  const factory StartState.setLoading({
    required final Key key,
    required final int done,
    required final int all
  }) = SetLoading;

  const factory StartState.showError({
    required final Key key,
    required final String message,
  }) = ShowError;

  const factory StartState.navigateToComics({
    required final Key key,
    required final List<Comic> comics,
  }) = NavigateToComics;
}