import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseCubit<State> extends Cubit<State> {

  final CompositeSubscription disposables = CompositeSubscription();

  BaseCubit({required final State initialState}) : super(initialState) {
    initSync();
    initAsync();
  }

  void initSync() {}

  Future<void> initAsync() async {}

  @override
  Future<void> close() async {
    disposables.dispose();
    return super.close();
  }
}