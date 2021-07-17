import 'dart:async';

import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:i_am_steve_flutter/domain/operation/preload_comics_operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';

class StartCubit extends BaseCubit<StartState> {

  StartCubit() : super(StartState.initial());

  @override
  Future<void> init() async {
    _preloadComics()
      .then((_) => _getComics())
      .then((comics) => _sequentiallyDownloadComicPanels(comics))
      .asStream()
      .listen(
        (data) {},
        onError: (error) { emit(StartState.handleError(error)); },
        onDone: () { emit(StartState.navigateToComics()); }
      )
      .addTo(disposables);
  }

  Future<void> _preloadComics() {
    return PreloadComicsOperation().execute();
  }

  Future<List<Comic>> _getComics() {
    return GetComicsOperation().execute();
  }

  Future _sequentiallyDownloadComicPanels(final List<Comic> comics) async {
    comics.forEach((comic) async =>
      await GetComicPanelsOperation(comic)
        .execute()
        .then((_) {
          emit(StartState.loading(
            comic.number,
            comics.length
          ));
        })
    );
  }
}