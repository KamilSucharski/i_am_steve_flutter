import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/start/startCubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/startState.dart';

class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StartCubit>(
      create: (_) => GetIt.I(),
      child: BlocListener<StartCubit, StartState>(
        listener: (context, state) {

        }
      )
    );
  }
}