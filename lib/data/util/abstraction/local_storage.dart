import 'dart:io';
import 'dart:typed_data';

abstract class LocalStorage {
  Stream<bool> containsEntry(final String key);

  Stream<bool> containsFile(final String key);

  Stream<bool> removeEntry(final String key);

  Stream<void> removeFile(final String key);

  Stream<bool> putBool(final String key, final bool value);

  Stream<bool> putInt(final String key, final int value);

  Stream<bool> putString(final String key, final String value);

  Stream<bool> putObject(final String key, final Object object);

  Stream<File> putFile(final String key, final Uint8List bytes);

  Stream<bool?> getBoolean(final String key);

  Stream<int?> getInt(final String key);

  Stream<String?> getString(final String key);

  Stream<T?> getObject<T>(final String key);

  Stream<File?> getFile(final String key);
}
