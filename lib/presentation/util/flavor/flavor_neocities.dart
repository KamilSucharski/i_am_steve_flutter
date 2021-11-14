import 'package:i_am_steve_flutter/domain/util/abstraction/flavor.dart';
import 'package:injectable/injectable.dart';

@Injectable(
  as: Flavor,
  env: ['neocities'],
)
class FlavorNeocities implements Flavor {
  @override
  String getBaseUrl() => 'https://iamsteve.neocities.org/';
}