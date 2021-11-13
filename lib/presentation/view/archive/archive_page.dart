import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';

import 'archive_arguments.dart';
import 'archive_list_mapper.dart';

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
  }) {
    final listItems = ArchiveListMapper((comic) => cubit.onComicClicked(comic: comic))
      .map(arguments.comics);
    return SafeArea(
      child: Container(
        color: Styles.backgroundColor,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: listItems.length,
          itemBuilder: (context, index) => listItems[index]
            .toWidget(context: context),
        ).build(context),
      ),
    );
  }
}