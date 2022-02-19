import 'dart:io';
import 'dart:typed_data';

abstract class LocalStorage {
  Future<bool> containsEntry({
    required final String key,
  });

  Future<bool> containsFile({
    required final String key,
  });

  Future<bool> removeEntry({
    required final String key,
  });

  Future<void> removeFile({
    required final String key,
  });

  Future<bool> putBool({
    required final String key,
    required final bool value,
  });

  Future<bool> putInt({
    required final String key,
    required final int value,
  });

  Future<bool> putString({
    required final String key,
    required final String value,
  });

  Future<bool> putObject({
    required final String key,
    required final Object object,
  });

  Future<File> putFile({
    required final String key,
    required final Uint8List bytes,
  });

  Future<bool?> getBoolean({
    required final String key,
  });

  Future<int?> getInt({
    required final String key,
  });

  Future<String?> getString({
    required final String key,
  });

  Future<T?> getObject<T>({
    required final String key,
  });

  Future<File?> getFile({
    required final String key,
  });
}
