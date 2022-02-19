import 'package:rxdart/rxdart.dart';

class LoadingIndicator {
  final _subject = BehaviorSubject.seeded(0);

  Stream<bool> getStream() => _subject
    .map((count) => count > 0);

  void incrementLoading() => _modifyLoading(1);

  void decrementLoading() => _modifyLoading(-1);

  void _modifyLoading(final int modification) {
    final int desiredChange = _subject.value + modification;
    _subject.value = (desiredChange).clamp(0, desiredChange);
  }
}