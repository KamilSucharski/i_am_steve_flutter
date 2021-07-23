
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:sprintf/sprintf.dart';

class ComicTitleListItem implements ListItem {
  final int _number;
  final String _title;

  ComicTitleListItem(this._number, this._title);

  @override
  Widget toWidget(final BuildContext context) {
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
          [_number, _title]
        ),
        style: Theme.of(context).textTheme.overline?.apply(
          fontSizeFactor: 1.6,
          color: Styles.colorBlack
        ),
      )
    );
  }
}