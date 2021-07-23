import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';

class ComicPanelListItem implements ListItem {
  final Uint8List _panel;

  ComicPanelListItem(this._panel);

  @override
  Widget toWidget(final BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6,
        right: 6,
        bottom: 2,
        top: 2
      ),
      padding: EdgeInsets.all(2),
      color: Styles.colorBlack,
      child: Image.memory(_panel),
    );
  }
}