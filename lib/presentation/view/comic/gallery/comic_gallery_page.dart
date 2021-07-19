import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/gallery/comic_gallery_state.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
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
    final PageController controller = PageController(keepPage: false);
    final List<Widget> pages = widget
      .arguments
      .comics
      .map((comic) => ComicPage(ComicArguments(comic: comic)))
      .toList();

    return SafeArea(
      child: Container(
        color: Styles.BACKGROUND_COLOR,
        child: PageView(
          controller: controller,
          children: pages
        )
      )
    );
  }
}