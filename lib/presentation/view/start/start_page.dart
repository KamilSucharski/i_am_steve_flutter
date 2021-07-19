import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/assets.dart';
import 'package:i_am_steve_flutter/presentation/resource/routes.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:i_am_steve_flutter/presentation/view/comic/gallery/comic_gallery_arguments.dart';
import 'package:sprintf/sprintf.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartPageState();
}

class _StartPageState extends BaseWidgetState<StartPage, StartCubit, StartState> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  bool onStateChange(final BuildContext context, final StartState state) {
    if (state is HandleError) {
      Fluttertoast.showToast(msg: state.error.toString());
      return false;
    }

    if (state is NavigateToComics) {
      Navigator.of(context).pushReplacementNamed(
        Routes.COMICS,
        arguments: ComicGalleryArguments(comics: state.comics),
      );
      return false;
    }

    return true;
  }

  @override
  Widget createBody(final BuildContext context, final StartState state) {
    final String progressText = state.maybeMap(
      loading: (state) => sprintf(
        Strings.START_BODY_WITH_PROGRESS,
        [state.done, state.all]
      ),
      orElse: () => Strings.START_BODY_WITHOUT_PROGRESS
    );

    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Widget textContainer = Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.5,
      padding: const EdgeInsets.all(16),
      child: Text(
        progressText,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.overline?.apply(
          fontSizeFactor: 4
        ),
      )
    );

    Widget icon = SvgPicture.asset(
      Assets.ICON_STEVE,
      width: mediaQueryData.size.width * 0.5,
      height: mediaQueryData.size.width * 0.5
    );

    if (_animationController != null) {
      icon = RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController!),
        child: icon
      );
      if (_animationController?.isAnimating == false) {
        _animationController?.repeat();
      }
    }

    final Widget iconContainer = Container(
      padding: const EdgeInsets.all(16),
      child: icon
    );

    return SafeArea(
      child: Container(
        color: Styles.BACKGROUND_COLOR,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            textContainer,
            iconContainer
          ],
        )
      )
    );
  }
}