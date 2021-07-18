import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

abstract class BaseWidgetState<CUBIT extends BaseCubit<STATE>, STATE> extends State<StatefulWidget> {
  final CUBIT cubit = GetIt.I.get<CUBIT>();

  /** Return true if you want to rebuild the widget */
  bool onStateChange(final BuildContext context, final STATE state);
  Widget createBody(final BuildContext context, final STATE state);

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<CUBIT>(
        create: (_) => cubit,
        child: BlocListener<CUBIT, STATE>(
          listener: (context, state) {
            if (onStateChange(context, state)) {
              setState(() {});
            }
          },
          child: createBody(context, cubit.state)
        )
    );
  }
}