import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/extension/context.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:sprintf/sprintf.dart';

class ComicTitleListItem implements ListItem {
  final int _number;
  final String _title;

  ComicTitleListItem(this._number, this._title);

  @override
  Widget toWidget({
    required final BuildContext context
  }) => Container(
    width: double.infinity,
    margin: const EdgeInsets.only(
      left: 8,
      right: 8,
      bottom: 8,
      top: 6
    ),
    child: Text(
      sprintf(
        context.getString((strings) => strings.comic_titleFormat),
        [_number, _title]
      ),
      style: Theme.of(context).textTheme.overline?.apply(
        fontSizeFactor: 1.6,
        color: Styles.colorBlack
      ),
    )
  );
}