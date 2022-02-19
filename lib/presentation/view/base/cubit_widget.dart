import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/base/base_cubit.dart';

abstract class CubitWidget<CUBIT extends BaseCubit<STATE>, STATE> extends StatelessWidget {
  final CUBIT cubit = GetIt.I.get<CUBIT>();

  void onStateChange({
    required final BuildContext context,
    required final STATE state,
  }) {}

  Widget createBody({
    required final BuildContext context,
  }) {
    return const SizedBox.shrink();
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
          onStateChange(
            context: context,
            state: state,
          );
        },
        child: createBody(
          context: context,
        ),
      ),
    );
  }
}