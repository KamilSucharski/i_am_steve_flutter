import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';

part 'archive_arguments.freezed.dart';

@freezed
class ArchiveArguments with _$ArchiveArguments {

  const factory ArchiveArguments({
    required List<Comic> comics
  }) = _ArchiveArguments;
}