import 'dart:async';

import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:rxdart/rxdart.dart';

class StartCubit extends BaseCubit<StartState> {
  final GetComicsOperation _getComicsOperation;
  final GetComicPanelsOperation _getComicPanelsOperation;

  StartCubit(
    this._getComicsOperation,
    this._getComicPanelsOperation
  ) : super(StartState.initial());

  @override
  Future<void> init() async {
    _getComics()
      .flatMap((comics) => _sequentiallyDownloadComicPanels(comics))
      .listen(
        (comics) => emit(StartState.navigateToComics(comics)),
        onError: (error) => emit(StartState.handleError(error))
      )
      .addTo(disposables);
  }

  Stream<List<Comic>> _getComics() {
    return _getComicsOperation.execute({});
  }

  Stream<List<Comic>> _sequentiallyDownloadComicPanels(final List<Comic> comics) {
    Stream sequentialDownloads = Stream.value(null);
    comics.forEach((comic) {
      final Stream nextDownload = _getComicPanelsOperation
        .execute(comic)
        .map((comicPanels) {
          emit(StartState.loading(
            comic.number,
            comics.length
          ));
      });
      sequentialDownloads = sequentialDownloads.flatMap((_) => nextDownload);
    });
    return sequentialDownloads.map((_) => comics);
  }
}