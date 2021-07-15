import 'package:flutter/services.dart';
import 'package:i_am_steve_flutter/domain/util/assetReader.dart';

class AssetReaderImpl implements AssetReader {

  @override
  Stream<String> getString(String assetName) {
    return rootBundle
        .loadString(assetName)
        .asStream();
  }

  @override
  Stream<ByteData> getBytes(String assetName) {
    return rootBundle
        .load(assetName)
        .asStream();
  }
}