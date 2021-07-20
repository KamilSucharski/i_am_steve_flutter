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
  final PageController _controller = PageController(keepPage: false);

  @override
  Widget createBody(final BuildContext context, final ComicGalleryState state) {

    return SafeArea(
      child: Container(
        color: Styles.BACKGROUND_COLOR,
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
    return new Container(
      height: 52,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _createButton(
            Assets.ICON_CHEVRON_LEFT,
            () => _controller.previousPage(
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
            () => _controller.nextPage(
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

  Widget _createPageView() {
    final List<Widget> pages = widget
      .arguments
      .comics
      .map((comic) => ComicPage(ComicArguments(comic: comic)))
      .toList();
    return Expanded(
      child: PageView(
        controller: _controller,
        children: pages
      )
    );
  }
}