import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/unit.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'comic_gallery_state.dart';

@Injectable()
class ComicGalleryCubit extends BaseCubit<ComicGalleryState> {

  ComicGalleryCubit() : super(initialState: const ComicGalleryState.initial());

  PageController? pageController;

  @override
  void initSync() {
    emit(ComicGalleryState.setButtonsVisibility(
      key: UniqueKey(),
      previousButtonVisible: true,
      nextButtonVisible: false,
    ));
  }

  void observeArchiveTaps({
    required final Stream<Unit> taps,
  }) => taps
    .map((it) => ComicGalleryState.navigateToArchive(
      key: UniqueKey(),
    ))
    .listen(emit)
    .addTo(disposables);

  void observePreviousPageTaps({
    required final Stream<Unit> taps,
  }) => taps
    .listen((_) => pageController?.previousPage(
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear
    ))
    .addTo(disposables);

  void observeNextPageTaps({
    required final Stream<Unit> taps,
  }) => taps
    .listen((_) => pageController?.nextPage(
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear
    ))
    .addTo(disposables);

  void changePage({
    required final int page,
  }) => pageController?.animateToPage(
    page,
    duration: const Duration(milliseconds: 100),
    curve: Curves.linear
  );

  void onPageChanged(
    final int page,
    final int size
  ) {
    emit(ComicGalleryState.setButtonsVisibility(
      key: UniqueKey(),
      previousButtonVisible: page != 0,
      nextButtonVisible: page < size - 1,
    ));
  }
}