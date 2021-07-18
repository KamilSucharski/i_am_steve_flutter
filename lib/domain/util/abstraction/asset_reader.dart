import 'package:flutter/services.dart';

abstract class AssetReader {
  Future<String> getString(final String assetName);
  Future<ByteData> getBytes(final String assetName);
}
