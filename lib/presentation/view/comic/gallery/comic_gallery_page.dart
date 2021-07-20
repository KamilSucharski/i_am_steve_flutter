import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_state.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/assets.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_page.dart';
import 'package:sprintf/sprintf.dart';

class ComicGalleryPage extends StatefulWidget {
  final ComicGalleryArguments arguments;

  const ComicGalleryPage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ComicGalleryPageState();
}

class _ComicGalleryPageState extends BaseWidgetState<ComicGalleryPage, ComicGalleryCubit, ComicGalleryState> {

  @override
  Widget createBody(final BuildContext context, final ComicGalleryState state) {
    final List<Comic> comics = widget.arguments.comics;
    final PageController controller = PageController(
      initialPage: comics.length - 1,
      keepPage: false
    );
    return SafeArea(
      child: Container(
        color: Styles.BACKGROUND_COLOR,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            _createButtons(controller),
            _createPageView(controller, comics)
          ],
        )
      )
    );
  }

  Widget _createButtons(final PageController controller) {
    return new Container(
      height: 52,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _createButton(
            Assets.ICON_CHEVRON_LEFT,
            () => controller.previousPage(
              duration: Duration(milliseconds: 100),
              curve: Curves.linear
            )
          ),
          _createButton(
            Assets.ICON_ARCHIVE,
            () => Fluttertoast.showToast(msg: 'Archive')
          ),
          _createButton(
            Assets.ICON_CHEVRON_RIGHT,
            () => controller.nextPage(
              duration: Duration(milliseconds: 100),
              curve: Curves.linear
            )
          )
        ]
      )
    );
  }

  Widget _createButton(
    final String asset,
    final void Function() onClick
  ) {
    return Expanded(
      child: Material(
        color: Styles.BACKGROUND_COLOR,
        child: InkWell(
          onTap: onClick,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              asset,
              color: Styles.BUTTON_COLOR,
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
        children: pages
      )
    );
    return pageView;
  }
}