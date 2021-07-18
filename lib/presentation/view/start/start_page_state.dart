import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:i_am_steve_flutter/presentation/view/base/base_widget_state.dart';
import 'package:sprintf/sprintf.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartPageState();
}

class _StartPageState extends BaseWidgetState<StartCubit, StartState> {

  @override
  bool onStateChange(final BuildContext context, final StartState state) {
    if (state is HandleError) {
      Fluttertoast.showToast(msg: state.error.toString());
      return false;
    }

    if (state is NavigateToComics) {
      Fluttertoast.showToast(msg: 'Navigate');
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

    return SafeArea(
      child: Column(
        children: [
          Text(progressText)
        ],
      ),
    );
  }
}