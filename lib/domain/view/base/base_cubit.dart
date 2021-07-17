import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseCubit<State> extends Cubit<State> {

  final CompositeSubscription subscription = CompositeSubscription();

  BaseCubit(State initialState) : super(initialState) {
    init();
  }

  Future<void> init() async {}

  @override
  Future<void> close() async {
    subscription.dispose();
    return super.close();
  }
}