import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

part 'archive_state.freezed.dart';

@freezed
abstract class  ArchiveState with _$ArchiveState {
  const factory ArchiveState.initial() = Initial;

  const factory ArchiveState.navigateToComic(
    final Comic comic
  ) = NavigateToComic;
}