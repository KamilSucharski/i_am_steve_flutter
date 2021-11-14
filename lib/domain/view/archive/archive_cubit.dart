import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'archive_state.dart';

@Injectable()
class ArchiveCubit extends BaseCubit<ArchiveState> {

  ArchiveCubit() : super(initialState: const ArchiveState.initial());

  void observeComicTaps({
    required final Stream<Comic> taps,
  }) => taps
    .map((comic) => ArchiveState.navigateToComic(
      key: UniqueKey(),
      comic: comic,
    ))
    .listen(emit)
    .addTo(disposables);
}