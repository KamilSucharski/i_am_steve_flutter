import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_list_mapper.dart';

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
          child: blocBuilder(
            builder: (context, state) => state
              .cast<DisplayComic>()
              ?.let((it) {
                final listItems = ComicListMapper().map(it);
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: listItems.length,
                  itemBuilder: (context, index) => listItems[index]
                    .toWidget(context: context),
                ).build(context);
              })
              ?? const SizedBox.shrink(),
            buildWhen: (previous, current) => current is DisplayComic,
          ),
        ),
      ),
    );
  }
}