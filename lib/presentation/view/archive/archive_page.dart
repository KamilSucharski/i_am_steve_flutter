import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';

import 'archive_arguments.dart';

class ArchivePage extends StatefulWidget {
  final ArchiveArguments arguments;

  const ArchivePage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ArchivePageState();
}

class _ArchivePageState extends BaseWidgetState<ArchivePage, ArchiveCubit, ArchiveState> {

  @override
  bool onStateChange(final BuildContext context, final ArchiveState state) {
    if (state is NavigateToComic) {
      // todo
      return false;
    }

    return true;
  }

  @override
  Widget createBody(final BuildContext context, final ArchiveState state) {
    if (state is Initial) {
      cubit.displayComics(widget.arguments.comics);
      return super.createBody(context, state);
    }

    if (!(state is DisplayComics)) {
      return super.createBody(context, state);
    }

    return SafeArea(
      child: Container(
        color: Styles.BACKGROUND_COLOR,
        child: ListView(

        )
      )
    );
  }
}