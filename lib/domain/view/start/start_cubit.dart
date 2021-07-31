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
      .asStream()
      .flatMap((comics) => _sequentiallyDownloadComicPanels(comics))
      .listen(
        (comics) => emit(StartState.navigateToComics(comics)),
        onError: (dynamic error) {
          emit(StartState.handleError(error));
        }
      )
      .addTo(disposables);
  }

  Future<List<Comic>> _getComics() {
    return _getComicsOperation.execute(null);
  }

  Stream<List<Comic>> _sequentiallyDownloadComicPanels(final List<Comic> comics) {
    var sequentialDownloads = Stream.value(null);
    comics.forEach((comic) {
      sequentialDownloads = sequentialDownloads
        .flatMap((_) => _getComicPanelsOperation
          .execute(comic)
          .asStream()
          .map((comicPanels) {
            emit(StartState.loading(
              comic.number,
              comics.length
            ));
          })
        );
    });
    return sequentialDownloads.map((_) => comics);
  }
}