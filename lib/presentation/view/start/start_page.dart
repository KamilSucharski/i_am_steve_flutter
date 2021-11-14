import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/util/extension/context.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/images.dart';
import 'package:i_am_steve_flutter/presentation/resource/routes.dart';
import 'package:i_am_steve_flutter/presentation/view/base/cubit_widget.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:i_am_steve_flutter/presentation/view/widget/rotating_widget.dart';
import 'package:image_loader/image_helper.dart';
import 'package:sprintf/sprintf.dart';

class StartPage extends CubitWidget<StartCubit, StartState> {

  @override
  void onStateChange({
    required final BuildContext context,
    required final StartState state,
  }) {
    state
      .cast<ShowError>()
      ?.let((it) => it.message)
      .let((it) => Fluttertoast.showToast(msg: it));

    state
      .cast<NavigateToComics>()
      ?.let((it) => Navigator
        .of(context)
        .pushReplacementNamed(
          Routes.comics,
          arguments: ComicGalleryArguments(comics: it.comics),
        ));
  }

  @override
  Widget createBody({
    required final BuildContext context,
  }) => Scaffold(
    body: SafeArea(
      child: Column(
        verticalDirection: VerticalDirection.up,
        children: [
          _createProgressTextWidget(context: context),
          _createIconWidget(context: context),
        ],
      ),
    ),
  );

  Widget _createProgressTextWidget({
    required final BuildContext context,
  }) => Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.5,
    padding: const EdgeInsets.all(16),
    child: blocBuilder(
      builder: (context, state) {
        final String text = state.maybeMap(
          setLoading: (state) => sprintf(
            context.getString((strings) => strings.start_bodyWithProgress),
            [state.done, state.all]
          ),
          orElse: () => context.getString((strings) => strings.start_bodyWithoutProgress),
        );
        return Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
          ),
        );
      },
    ),
  );

  Widget _createIconWidget({
    required final BuildContext context,
  }) => Container(
    padding: const EdgeInsets.all(16),
    child: RotatingWidget(
      child: ImageHelper(
        image: Images.iconSteve,
        imageType: ImageType.svg,
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.width * 0.5,
        errorBuilder: const SizedBox.shrink(),
      ),
    ),
  );
}