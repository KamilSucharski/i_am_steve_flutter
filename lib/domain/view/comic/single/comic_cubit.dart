import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:rxdart/rxdart.dart';

import 'comic_state.dart';

class ComicCubit extends BaseCubit<ComicState> {
  final GetComicPanelsOperation _getComicPanelsOperation;

  ComicCubit(this._getComicPanelsOperation) : super(ComicState.initial());

  void fetchComicPanels(final Comic comic) {
    _getComicPanelsOperation
      .execute(comic)
      .asStream()
      .listen(
        (comicPanels) => emit(ComicState.displayComic(comic, comicPanels)),
        onError: (dynamic error) => emit(ComicState.handleError(error))
      )
      .addTo(disposables);
  }
}