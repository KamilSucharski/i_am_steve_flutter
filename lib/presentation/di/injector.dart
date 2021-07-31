import 'package:get_it/get_it.dart';
import 'package:i_am_steve_flutter/presentation/di/module/cubit_module.dart';
import 'package:i_am_steve_flutter/presentation/di/module/implementation_module.dart';
import 'package:i_am_steve_flutter/presentation/di/module/operation_module.dart';
import 'package:i_am_steve_flutter/presentation/di/module/repository_module.dart';

import 'module/network_module.dart';

class Injector {
  static void initialize(final String baseUrl) {
    [
      ImplementationModule(baseUrl),
      NetworkModule(),
      RepositoryModule(),
      OperationModule(),
      CubitModule()
    ].forEach((module) => module.initialize(GetIt.I));
  }
}