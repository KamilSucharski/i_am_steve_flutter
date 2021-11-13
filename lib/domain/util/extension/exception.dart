import 'package:dio/dio.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';

extension GetMessage on Exception {
  String getMessage() {
    final dioException = cast<DioError>();
    if (dioException != null) {
      return dioException.message;
    }

    return toString();
  }
}