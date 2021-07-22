import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/archive/archive_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:sprintf/sprintf.dart';

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
      Navigator.pop(context, state.comic);
      return false;
    }

    return true;
  }

  @override
  Widget createBody(final BuildContext context, final ArchiveState state) {
    final List<Comic> comics = widget.arguments.comics;
    return SafeArea(
      child: Container(
        color: Styles.backgroundColor,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: comics.length,
          itemBuilder: (context, index) => _getArchiveItem(
            comics[index],
            (comic) => cubit.onComicClicked(comic)
          ),
        ).build(context)
      )
    );
  }

  Widget _getArchiveItem(
    final Comic comic,
    final void Function(Comic) onClick
  ) {
    return Container(
      width: double.infinity,
      color: Styles.backgroundColor,
      margin: EdgeInsets.only(
        bottom: 1
      ),
      child: Material(
        color: Styles.elementColor,
        child: InkWell(
          onTap: () => onClick(comic),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              sprintf(
                Strings.comicArchiveFormat,
                [comic.number, comic.title, comic.date]
              ),
              style: Theme.of(context).textTheme.overline?.apply(
                fontSizeFactor: 1.6,
                color: Styles.colorWhite
              )
            ),
          )
        )
      )
    );
  }
}