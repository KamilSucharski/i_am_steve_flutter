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
      .flatMap((_) => _getComics())
      .flatMap((comics) => _sequentiallyDownloadComicPanels(comics))
      .listen(
        (data) {},
        onError: (error) { emit(StartState.handleError(error)); },
        onDone: () {
          emit(StartState.navigateToComics());
        }
      )
      .addTo(disposables);
  }

  Stream _preloadComics() {
    return PreloadComicsOperation()
      .execute()
      .asStream();
  }

  Stream<List<Comic>> _getComics() {
    return GetComicsOperation()
        .execute()
        .asStream();
  }

  Stream _sequentiallyDownloadComicPanels(final List<Comic> comics) {
    Stream sequentialDownloads = Stream.value(null);
    comics.forEach((comic) {
      final Stream nextDownload = GetComicPanelsOperation(comic)
        .execute()
        .map((_) {
          emit(StartState.loading(
            comic.number,
            comics.length
          ));
      });
      sequentialDownloads = sequentialDownloads.flatMap((_) => nextDownload);
    });
    return sequentialDownloads;
  }
}