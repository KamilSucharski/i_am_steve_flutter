import 'dart:async';
import 'dart:io';

import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comic_panels_operation.dart';
import 'package:i_am_steve_flutter/domain/operation/get_comics_operation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:i_am_steve_flutter/domain/operation/preload_comics_operation.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';

class StartCubit extends BaseCubit<StartState> {

  StartCubit() : super(StartState());

  @override
  Future<void> init() async {
    _preloadComics()
      .flatMap((_) => _getComics())
      .flatMap((comics) => _sequentiallyDownloadComicPanels(comics))
      .listen(
        (data) {
          stdout.writeln("DUPA data");
        },
        onError: (error) {
          stderr.writeln("DUPA error");
        },
        onDone: () {
          stdout.writeln("DUPA done");
        }
      )
      .addTo(disposables);
  }

  Stream<bool> _preloadComics() {
    return PreloadComicsOperation().execute();
  }

  Stream<List<Comic>> _getComics() {
    return GetComicsOperation().execute();
  }

  Stream _sequentiallyDownloadComicPanels(final List<Comic> comics) {
    Stream sequentialDownload = Stream.value(true);
    comics.forEach((comic) =>
      sequentialDownload = sequentialDownload.flatMap((download) =>
        GetComicPanelsOperation(comic)
          .execute()
          //.map((comicPanels) => view.setProgress(comic.number, comics.size))
      )
    );
    return sequentialDownload;
  }
}