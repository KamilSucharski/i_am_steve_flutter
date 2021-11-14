import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';

class ComicPanelListItem implements ListItem {
  final Uint8List _panel;

  ComicPanelListItem(this._panel);

  @override
  Widget toWidget({
    required final BuildContext context,
  }) => Container(
    margin: const EdgeInsets.only(
      left: 6,
      right: 6,
      bottom: 2,
      top: 2
    ),
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
      color: Styles.colorWhite,
      border: Border.all(color: Styles.colorBlack),
    ),
    child: AspectRatio(
      aspectRatio: 1004 / 685,
      child: Image.memory(_panel),
    ),
  );
}