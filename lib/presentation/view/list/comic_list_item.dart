import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:sprintf/sprintf.dart';

class ComicListItem implements ListItem {
  final Comic _comic;
  final Function(Comic) _onComicClicked;

  ComicListItem(this._comic, this._onComicClicked);

  @override
  Widget toWidget(final BuildContext context) {
    final button = Container(
      width: double.infinity,
      child: Material(
        color: Styles.backgroundColor,
        child: InkWell(
          onTap: () => _onComicClicked(_comic),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              sprintf(
                Strings.comicArchiveFormat,
                [_comic.number, _comic.title, _comic.date]
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

    final separator = Container(
      height: 1,
      width: double.infinity,
      color: Styles.darkerBackgroundColor
    );

    return Column(
      children: [
        button,
        separator
      ],
    );
  }
}