import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:sprintf/sprintf.dart';

class ComicPage extends StatefulWidget {
  final ComicArguments arguments;

  const ComicPage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ComicPageState();
}

class _ComicPageState extends BaseWidgetState<ComicPage, ComicCubit, ComicState> {

  @override
  bool onStateChange(final BuildContext context, final ComicState state) {
    if (state is HandleError) {
      Fluttertoast.showToast(msg: state.error.toString());
      return false;
    }

    return true;
  }

  @override
  Widget createBody(final BuildContext context, final ComicState state) {
    if (state is Initial) {
      cubit.fetchComicPanels(widget.arguments.comic);
      return super.createBody(context, state);
    }

    if (!(state is DisplayComic)) {
      return super.createBody(context, state);
    }

    final Widget panel1 = _createComicPanelWidget(state.comicPanels.panel1);
    final Widget panel2 = _createComicPanelWidget(state.comicPanels.panel2);
    final Widget panel3 = _createComicPanelWidget(state.comicPanels.panel3);
    final Widget panel4 = _createComicPanelWidget(state.comicPanels.panel4);
    final Widget comicTitle = _createComicTitleWidget(state.comic);

    return SafeArea(
      child: Container(
        color: Styles.colorWhite,
        child: SingleChildScrollView(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              panel1,
              panel2,
              panel3,
              panel4,
              comicTitle
            ],
          )
        )
      )
    );
  }

  Widget _createComicPanelWidget(final Uint8List panel) {
    return Container(
      margin: EdgeInsets.only(
        left: 6,
        right: 6,
        bottom: 2,
        top: 2
      ),
      padding: EdgeInsets.all(2),
      color: Styles.colorBlack,
      child: Image.memory(panel),
    );
  }

  Widget _createComicTitleWidget(final Comic comic) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 8,
          top: 6
        ),
        child: Text(
          sprintf(
            Strings.comicTitleFormat,
            [comic.number, comic.title]
          ),
          style: Theme.of(context).textTheme.overline?.apply(
            fontSizeFactor: 1.6,
            color: Styles.colorBlack
          ),
        )
    );
  }
}