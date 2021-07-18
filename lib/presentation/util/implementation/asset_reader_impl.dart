import 'package:flutter/services.dart';
import 'package:i_am_steve_flutter/domain/util/abstraction/asset_reader.dart';

class AssetReaderImpl implements AssetReader {

  @override
  Future<String> getString(final String assetName) {
    return rootBundle.loadString(assetName);
  }
}