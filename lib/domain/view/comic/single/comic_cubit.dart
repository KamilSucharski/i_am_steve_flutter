import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'comic_state.dart';

@Injectable()
class ComicCubit extends BaseCubit<ComicState> {
  final GetComicPanelsOperation getComicPanelsOperation;

  ComicCubit({
    required final this.getComicPanelsOperation,
  }) : super(initialState: const ComicState.initial());

  final _errorSubject = PublishSubject<String>();

  @override
  void initSync() {
    _errorSubject
      .map((error) => ComicState.showError(
        key: UniqueKey(),
        message: error,
      ))
      .listen(emit)
      .addTo(disposables);
  }

  void fetchComicPanels({
    required final Comic comic
  }) => getComicPanelsOperation
    .execute(input: comic)
    .asStream()
    .map((comicPanels) => ComicState.displayComic(
      key: UniqueKey(),
      comic: comic,
      comicPanels: comicPanels,
    ))
    .listen(emit)
    .addTo(disposables);
}