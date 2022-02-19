import 'package:i_am_steve_flutter/domain/util/unit.dart';

abstract class Operation<IN, OUT> {
  OUT execute({
    required final IN input,
  });
}

extension UnitOperation<OUT> on Operation<Unit, OUT> {
  OUT executeUnit() => execute(
    input: Unit(),
  );
}