import 'dart:async';

import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:i_am_steve_flutter/domain/util/extension/stream.dart';
import 'package:i_am_steve_flutter/domain/util/operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class StartCubit extends BaseCubit<StartState> {
  final GetComicsOperation getComicsOperation;
  final GetComicPanelsOperation getComicPanelsOperation;
  AnimationController? animationController;

  StartCubit({
    required final this.getComicsOperation,
    required final this.getComicPanelsOperation
  }) : super(initialState: const StartState.initial());

  final _errorSubject = PublishSubject<String>();

  @override
  void initSync() {
    _errorSubject
      .map((error) => StartState.showError(
        key: UniqueKey(),
        message: error,
      ))
      .listen(emit)
      .addTo(disposables);

    _getComics()
      .asStream()
      .flatMap<List<Comic>>(_sequentiallyDownloadComicPanels)
      .map((comics) => StartState.navigateToComics(
        key: UniqueKey(),
        comics: comics,
      ))
      .catchError(_errorSubject)
      .listen(emit)
      .addTo(disposables);
  }

  @override
  Future<void> close() async {
    animationController?.dispose();
    await super.close();
  }

  Future<List<Comic>> _getComics() {
    return getComicsOperation.executeUnit();
  }

  Stream<List<Comic>> _sequentiallyDownloadComicPanels(final List<Comic> comics) {
    var sequentialDownloads = Stream.value(null);
    for (final comic in comics) {
      sequentialDownloads = sequentialDownloads
        .flatMap((_) => getComicPanelsOperation
          .execute(input: comic)
          .asStream()
          .map((comicPanels) {
            emit(StartState.setLoading(
              key: UniqueKey(),
              done: comic.number,
              all: comics.length
            ));
          })
        );
    }
    return sequentialDownloads.map((_) => comics);
  }
}