import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
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
          ?.let((comic) => cubit
            .pageController
            ?.jumpToPage(arguments.comics.indexOf(comic))
          ),
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
    return SafeArea(
      child: Container(
        color: Styles.backgroundColor,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            _createButtons(),
            _createPageView()
          ],
        )
      )
    );
  }

  Widget _createButtons() {
    return Container(
      height: 52,
      color: Styles.backgroundColor,
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
              onTap: cubit.onPreviousPageTapped,
            ),
            _createButton(
              iconName: Images.iconArchive,
              visible: true,
              onTap: cubit.onArchiveTapped,
            ),
            _createButton(
              iconName: Images.iconChevronRight,
              visible: state
                .cast<SetButtonsVisibility>()
                ?.nextButtonVisible
                ?? false,
              onTap: cubit.onNextPageTapped,
            )
          ]
        )
      )
    );
  }

  Widget _createButton({
    required final String iconName,
    required final bool visible,
    required final void Function() onTap,
  }) {
    if (!visible) {
      return const Expanded(child: SizedBox());
    }

    return Expanded(
      child: Material(
        color: Styles.backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              iconName,
              color: Styles.buttonColor,
              height: 24,
              width: 24
            )
          )
        )
      )
    );
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