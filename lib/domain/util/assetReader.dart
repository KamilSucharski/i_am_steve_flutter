import 'package:flutter/services.dart';

abstract class AssetReader {
  Stream<String> getString(final String assetName);
  Stream<ByteData> getBytes(final String assetName);
}