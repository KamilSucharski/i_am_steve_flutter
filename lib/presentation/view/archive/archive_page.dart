import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';

import 'archive_arguments.dart';
import 'archive_list_mapper.dart';

class ArchivePage extends StatefulWidget {
  final ArchiveArguments arguments;

  const ArchivePage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ArchivePageState();
}

class _ArchivePageState extends BaseWidgetState<ArchivePage, ArchiveCubit, ArchiveState> {

  @override
  void onStateChange(final BuildContext context, final ArchiveState state) {
    if (state is NavigateToComic) {
      Navigator.pop(context, state.comic);
    }
  }

  @override
  Widget createBody(final BuildContext context) {
    final listItems = ArchiveListMapper((comic) => cubit.onComicClicked(comic))
      .map(widget.arguments.comics);
    return SafeArea(
      child: Container(
        color: Styles.backgroundColor,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: listItems.length,
          itemBuilder: (context, index) => listItems[index].toWidget(context),
        ).build(context)
      )
    );
  }
}