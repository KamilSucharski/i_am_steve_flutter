import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/util/unit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/images.dart';
import 'package:i_am_steve_flutter/presentation/resource/routes.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_page.dart';
import 'package:i_am_steve_flutter/presentation/view/widget/image_tab.dart';

class ComicGalleryPage extends CubitWidget<ComicGalleryCubit, ComicGalleryState> {
  final ComicGalleryArguments arguments;

  ComicGalleryPage({
    required final this.arguments,
  });

  @override
  void onStateChange({
    required BuildContext context,
    required ComicGalleryState state,
  }) {
    state
      .cast<NavigateToArchive>()
      ?.let((_) => Navigator
        .of(context)
        .pushNamed(
          Routes.archive,
          arguments: ArchiveArguments(comics: arguments.comics),
        ).then((result) => result
          .cast<Comic>()
          ?.let((comic) => cubit.changePage(page: arguments.comics.indexOf(comic))),
        ),
      );
  }

  @override
  Widget createBody({
    required final BuildContext context,
  }) {
    cubit.pageController = PageController(
      initialPage: arguments.comics.length - 1,
      keepPage: false
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            _createButtons(),
            _createPageView(),
          ],
        ),
      ),
    );
  }

  Widget _createButtons() {
    return SizedBox(
      height: 52,
      child: blocBuilder(
        builder: (_, state) => Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _createButton(
              iconName: Images.iconChevronLeft,
              visible: state
                .cast<SetButtonsVisibility>()
                ?.previousButtonVisible
                ?? false,
              tapsConsumer: (taps) => cubit.observePreviousPageTaps(taps: taps),
            ),
            _createButton(
              iconName: Images.iconArchive,
              visible: true,
              tapsConsumer: (taps) => cubit.observeArchiveTaps(taps: taps),
            ),
            _createButton(
              iconName: Images.iconChevronRight,
              visible: state
                .cast<SetButtonsVisibility>()
                ?.nextButtonVisible
                ?? false,
              tapsConsumer: (taps) => cubit.observeNextPageTaps(taps: taps),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createButton({
    required final String iconName,
    required final bool visible,
    required final void Function(Stream<Unit>) tapsConsumer,
  }) {
    if (!visible) {
      return const Expanded(child: SizedBox());
    }

    return ImageTab(
      image: SvgPicture.asset(
        iconName,
        color: Styles.buttonColor,
        height: 24,
        width: 24,
      ),
    ).also((it) => tapsConsumer.call(it.taps()));
  }

  Widget _createPageView() => Expanded(
    child: PageView.builder(
      controller: cubit.pageController,
      onPageChanged: (page) => cubit.onPageChanged(
        page,
        arguments.comics.length,
      ),
      itemCount: arguments.comics.length,
      itemBuilder: (BuildContext context, int index) => ComicPage(
        arguments: ComicArguments(
          comic: arguments.comics[index],
        ),
      ),
    ),
  );
}