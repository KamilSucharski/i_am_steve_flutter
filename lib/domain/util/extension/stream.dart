import 'package:i_am_steve_flutter/domain/util/extension/exception.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:i_am_steve_flutter/domain/util/loading_indicator.dart';
import 'package:rxdart/rxdart.dart';

extension CatchError<T> on Stream<T> {
  Stream<T> catchError(
    final PublishSubject<String> errorSubject,
    {Stream<T> recoveryStream = const Stream.empty(),}
  ) => onErrorResume((error, stacktrace) {
    error
      .cast<Exception>()
      ?.let((it) => errorSubject.add(it.getMessage()));
    
    error
      .cast<Error>()
      ?.let((it) => errorSubject.add(Error.safeToString(it)));
    
    return recoveryStream;
  });
}

extension TrackLoading<T> on Stream<T> {
  Stream<T> trackLoading(
    final LoadingIndicator loadingIndicator,
  ) => doOnListen(() => loadingIndicator.incrementLoading())
    .doOnDone(() => loadingIndicator.decrementLoading());
}