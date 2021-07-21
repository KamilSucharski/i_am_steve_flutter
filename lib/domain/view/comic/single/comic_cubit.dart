import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

import 'comic_state.dart';

class ComicCubit extends BaseCubit<ComicState> {

  ComicCubit() : super(ComicState.initial());

  void fetchComicPanels(final Comic comic) {
    GetComicPanelsOperation()
      .execute(comic)
      .listen(
        (comicPanels) => emit(ComicState.displayComic(comic, comicPanels)),
        onError: (error) => emit(ComicState.handleError(error))
      )
      .addTo(disposables);
  }
}