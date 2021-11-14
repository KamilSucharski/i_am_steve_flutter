import 'package:flutter/services.dart';

abstract class AssetReader {
  Future<String> getString({
    required final String assetName,
  });

  Future<ByteData> getBytes({
    required final String assetName,
  });
}