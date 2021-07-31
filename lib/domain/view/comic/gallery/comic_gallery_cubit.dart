import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

import 'comic_gallery_state.dart';

class ComicGalleryCubit extends BaseCubit<ComicGalleryState> {

  ComicGalleryCubit() : super(ComicGalleryState.setButtonVisibility(true, false));

  void onPageChanged(
    final int page,
    final int size
  ) {
    emit(SetButtonVisibility(
      page != 0,
      page < size - 1,
    ));
  }
}