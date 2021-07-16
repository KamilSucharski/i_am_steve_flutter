import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_cubit.dart';
import 'package:i_am_steve_flutter/domain/view/start/start_state.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final StartCubit _cubit = GetIt.I.get<StartCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StartCubit>(
      create: (_) => _cubit,
      child: BlocListener<StartCubit, StartState>(
        listener: (context, state) {

        },
        child: SafeArea(
          child: Column(
            children: [
              Text("Asd")
            ],
          ),
        ),
      )
    );
  }
}