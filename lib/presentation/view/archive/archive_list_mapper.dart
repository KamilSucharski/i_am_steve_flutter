import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/mapper.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:i_am_steve_flutter/presentation/view/list/comic_list_item.dart';

class ArchiveListMapper implements Mapper<List<Comic>, List<ListItem>> {
  final Function(Comic) _onComicClicked;

  ArchiveListMapper(this._onComicClicked);

  @override
  List<ListItem> map(final List<Comic> input) {
    return input
      .map((comic) => ComicListItem(comic, _onComicClicked))
      .toList();
  }
}