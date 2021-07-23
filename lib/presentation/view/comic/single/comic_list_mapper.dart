import 'package:i_am_steve_flutter/domain/util/mapper.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:i_am_steve_flutter/presentation/view/list/comic_panel_list_item.dart';
import 'package:i_am_steve_flutter/presentation/view/list/comic_title_list_item.dart';

class ComicListMapper implements Mapper<DisplayComic, List<ListItem>> {

  @override
  List<ListItem> map(final DisplayComic input) {
    final list = <ListItem>[];
    list.add(ComicPanelListItem(input.comicPanels.panel1));
    list.add(ComicPanelListItem(input.comicPanels.panel2));
    list.add(ComicPanelListItem(input.comicPanels.panel3));
    list.add(ComicPanelListItem(input.comicPanels.panel4));
    list.add(ComicTitleListItem(input.comic.number, input.comic.title));
    return list;
  }
}