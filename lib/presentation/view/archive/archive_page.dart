import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/extension/context.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_state.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';
import 'package:i_am_steve_flutter/presentation/view/widget/list_item.dart';
import 'package:sprintf/sprintf.dart';

import 'archive_arguments.dart';

class ArchivePage extends CubitWidget<ArchiveCubit, ArchiveState> {
  final ArchiveArguments arguments;

  ArchivePage({
    required final this.arguments
  });

  @override
  void onStateChange({
    required BuildContext context,
    required ArchiveState state,
  }) {
    state
      .cast<NavigateToComic>()
      ?.let((it) => Navigator.pop(context, it.comic));
  }

  @override
  Widget createBody({
    required final BuildContext context,
  }) => Scaffold(
    body: SafeArea(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: arguments.comics.length,
        itemBuilder: (context, index) => arguments
          .comics[index]
          .let((comic) => ListItem(
            text: sprintf(
              context.getString((strings) => strings.comic_archiveFormat),
              [comic.number, comic.title, comic.date],
            ),
          ).also((it) => cubit.observeComicTaps(taps: it.taps().map((_) => comic))),
        ),
      ).build(context),
    ),
  );
}