import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

abstract class BaseWidgetState<WIDGET extends StatefulWidget, CUBIT extends BaseCubit<STATE>, STATE> extends State<WIDGET> {
  final CUBIT cubit = GetIt.I.get<CUBIT>();

  void onStateChange(
    final BuildContext context,
    final STATE state,
  ) {}

  Widget createBody(final BuildContext context) {
    return Container();
  }

  BlocBuilder<CUBIT, STATE> blocBuilder({
    required final BlocWidgetBuilder<STATE> builder,
    final BlocBuilderCondition<STATE>? buildWhen,
  }) {
    return BlocBuilder<CUBIT, STATE>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<CUBIT>(
        create: (_) => cubit,
        child: BlocListener<CUBIT, STATE>(
          listener: (context, state) {
            onStateChange(context, state);
          },
          child: createBody(context)
        )
    );
  }
}