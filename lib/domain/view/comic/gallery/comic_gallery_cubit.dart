import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';
import 'package:injectable/injectable.dart';

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

  void onArchiveTapped() => emit(ComicGalleryState.navigateToArchive(
    key: UniqueKey(),
  ));

  void onPreviousPageTapped() => pageController?.previousPage(
    duration: const Duration(milliseconds: 100),
    curve: Curves.linear
  );

  void onNextPageTapped() => pageController?.nextPage(
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