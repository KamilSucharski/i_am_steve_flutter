import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/util/extension/build_context.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:sprintf/sprintf.dart';

class ComicPage extends CubitWidget<ComicCubit, ComicState> {
  final ComicArguments arguments;

  ComicPage({
    required final this.arguments,
  });

  @override
  void onStateChange({
    required final BuildContext context,
    required final ComicState state,
  }) {
    state
      .cast<ShowError>()
      ?.let((it) => it.message)
      .let((it) => Fluttertoast.showToast(msg: it));
  }

  @override
  Widget createBody({
    required final BuildContext context,
  }) {
    cubit.fetchComicPanels(comic: arguments.comic);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Styles.colorWhite,
          child: Scrollbar(
            child: blocBuilder(
              builder: (context, state) => state
                .cast<DisplayComic>()
                ?.let((it) => ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _createComicPanel(panel: it.comicPanels.panel1),
                    _createComicPanel(panel: it.comicPanels.panel2),
                    _createComicPanel(panel: it.comicPanels.panel3),
                    _createComicPanel(panel: it.comicPanels.panel4),
                    _createTitle(context: context, comic: it.comic),
                  ],
                ))
                ?? const SizedBox.shrink(),
              buildWhen: (previous, current) => current is DisplayComic,
            ),
          ),
        ),
      ),
    );
  }

  Widget _createComicPanel({
    required final Uint8List panel,
  }) => Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 6,
      vertical: 2,
    ),
    decoration: BoxDecoration(
      color: Styles.colorWhite,
      border: Border.all(
        color: Styles.colorBlack,
        width: 2,
      ),
    ),
    child: AspectRatio(
      aspectRatio: Consts.comicPanelAspectRatio,
      child: Image.memory(panel),
    ),
  );

  Widget _createTitle({
    required final BuildContext context,
    required final Comic comic,
  }) => Container(
    width: double.infinity,
    margin: const EdgeInsets.only(
      left: 8,
      right: 8,
      bottom: 8,
      top: 6,
    ),
    child: Text(
      sprintf(
        context.getString((strings) => strings.comic_titleFormat),
        [comic.number, comic.title]
      ),
      style: const TextStyle(
        fontSize: 16,
        color: Styles.colorBlack,
      ),
    ),
  );
}