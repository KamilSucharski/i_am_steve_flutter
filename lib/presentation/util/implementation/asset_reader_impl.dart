import 'package:flutter/services.dart';
import 'package:i_am_steve_flutter/data/util/abstraction/asset_reader.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AssetReader)
class AssetReaderImpl implements AssetReader {

  @override
  Future<String> getString(final String assetName) {
    return rootBundle.loadString(assetName);
  }

  @override
  Future<ByteData> getBytes(final String assetName) {
    return rootBundle.load(assetName);
  }
}