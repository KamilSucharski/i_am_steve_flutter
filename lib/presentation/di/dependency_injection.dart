import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

@InjectableInit()
void initializeDependencyInjection() {
  $initGetIt(
    GetIt.I,
    environment: const String.fromEnvironment(
      "flavor",
      defaultValue: "neocities",
    ),
  );
}
