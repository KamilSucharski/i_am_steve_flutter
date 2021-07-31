import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/comic/single/comic_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/single/comic_list_mapper.dart';

class ComicPage extends StatefulWidget {
  final ComicArguments arguments;

  const ComicPage(this.arguments);

  @override
  State<StatefulWidget> createState() => _ComicPageState();
}

class _ComicPageState extends BaseWidgetState<ComicPage, ComicCubit, ComicState> {

  @override
  void initState() {
    cubit.fetchComicPanels(widget.arguments.comic);
    super.initState();
  }

  @override
  void onStateChange(final BuildContext context, final ComicState state) {
    if (state is HandleError) {
      Fluttertoast.showToast(msg: state.error.toString());
    }
  }

  @override
  Widget createBody(final BuildContext context) {
    return SafeArea(
      child: Container(
        color: Styles.colorWhite,
        child: blocBuilder(
          builder: (context, state) {
            if (state is DisplayComic) {
              final listItems = ComicListMapper().map(state);
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listItems.length,
                itemBuilder: (context, index) => listItems[index].toWidget(context),
              ).build(context);
            } else {
              return super.createBody(context);
            }
          },
          buildWhen: (previous, current) => current is DisplayComic
        )
      )
    );
  }
}