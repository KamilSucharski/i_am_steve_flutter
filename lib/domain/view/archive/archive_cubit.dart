import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

import 'archive_state.dart';

class ArchiveCubit extends BaseCubit<ArchiveState> {

  ArchiveCubit() : super(ArchiveState.initial());

  void displayComics(final List<Comic> comics) {
    emit(ArchiveState.displayComics(comics));
  }

  void onComicClicked(final Comic comic) {
    emit(ArchiveState.navigateToComic(comic));
  }
}