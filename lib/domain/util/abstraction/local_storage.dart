import 'dart:io';
import 'dart:typed_data';

abstract class LocalStorage {
  Future<bool> containsEntry(final String key);

  Future<bool> containsFile(final String key);

  Future<bool> removeEntry(final String key);

  Future<void> removeFile(final String key);

  Future<bool> putBool(final String key, final bool value);

  Future<bool> putInt(final String key, final int value);

  Future<bool> putString(final String key, final String value);

  Future<bool> putObject(final String key, final Object object);

  Future<File> putFile(final String key, final String data);

  Future<bool?> getBoolean(final String key);

  Future<int?> getInt(final String key);

  Future<String?> getString(final String key);

  Future<T?> getObject<T>(final String key);

  Future<File?> getFile(final String key);
}
