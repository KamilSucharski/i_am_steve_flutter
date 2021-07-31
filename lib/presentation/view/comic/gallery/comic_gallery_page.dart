import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/assets.dart';
import 'package:i_am_steve_flutter/presentation/resource/routes.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/archive/archive_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_page.dart';

class ComicGalleryPage extends StatefulWidget {
  final ComicGalleryArguments arguments;

  const ComicGalleryPage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ComicGalleryPageState();
}

class _ComicGalleryPageState extends BaseWidgetState<ComicGalleryPage, ComicGalleryCubit, ComicGalleryState> {

  @override
  Widget createBody(final BuildContext context) {
    final comics = widget.arguments.comics;
    final controller = PageController(
      initialPage: comics.length - 1,
      keepPage: false
    );
    return SafeArea(
      child: Container(
        color: Styles.backgroundColor,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            _createButtons(controller, comics),
            _createPageView(controller, comics)
          ],
        )
      )
    );
  }

  Widget _createButtons(
    final PageController controller,
    final List<Comic> comics
  ) {
    return Container(
      height: 52,
      color: Styles.backgroundColor,
      child: blocBuilder(
        builder: (_, state) => Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _createButton(
              Assets.iconChevronLeft,
              !(state is SetButtonVisibility) || state.previousButtonVisible,
              () => _goToPreviousPage(controller)
            ),
            _createButton(
              Assets.iconArchive,
              true,
              () => _navigateToArchive(controller, comics)
            ),
            _createButton(
              Assets.iconChevronRight,
              !(state is SetButtonVisibility) || state.nextButtonVisible,
              () => _goToNextPage(controller)
            )
          ]
        )
      )
    );
  }

  Widget _createButton(
    final String asset,
    final bool visible,
    final void Function() onClick,
  ) {
    if (!visible) {
      return Expanded(child: SizedBox());
    }

    return Expanded(
      child: Material(
        color: Styles.backgroundColor,
        child: InkWell(
          onTap: onClick,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              asset,
              color: Styles.buttonColor,
              height: 24,
              width: 24
            )
          )
        )
      )
    );
  }

  Widget _createPageView(
    final PageController controller,
    final List<Comic> comics
  ) {
    final List<Widget> pages = comics
      .map((comic) => ComicPage(ComicArguments(comic: comic)))
      .toList();
    final Widget pageView = Expanded(
      child: PageView(
        controller: controller,
        onPageChanged: (page) => cubit.onPageChanged(page, pages.length),
        children: pages,
      )
    );
    return pageView;
  }

  void _goToPreviousPage(final PageController controller) {
    controller.previousPage(
      duration: Duration(milliseconds: 100),
      curve: Curves.linear
    );
  }

  void _goToNextPage(final PageController controller) {
    controller.nextPage(
      duration: Duration(milliseconds: 100),
      curve: Curves.linear
    );
  }

  void _navigateToArchive(
    final PageController controller,
    final List<Comic> comics
  ) {
    Navigator.of(context).pushNamed(
      Routes.archive,
      arguments: ArchiveArguments(comics: comics),
    ).then((result) {
      if (result is Comic) {
        controller.jumpToPage(comics.indexOf(result));
      }
    });
  }
}