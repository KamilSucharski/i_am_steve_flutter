import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';
import 'package:i_am_steve_flutter/presentation/resource/strings.dart';
import 'package:sprintf/sprintf.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final StartCubit _cubit = GetIt.I.get<StartCubit>();

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<StartCubit>(
      create: (_) => _cubit,
      child: BlocListener<StartCubit, StartState>(
        listener: (context, state) {
          setState(() {});
        },
        child: _createBody(_cubit.state)
      )
    );
  }

  Widget _createBody(final StartState state) {
    if (state is HandleError) {
      Fluttertoast.showToast(msg: state.error.toString());
    }

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