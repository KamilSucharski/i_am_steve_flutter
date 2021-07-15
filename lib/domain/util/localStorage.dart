import 'dart:io';
import 'dart:typed_data';

abstract class LocalStorage {
  bool containsEntry(final String key);

  bool containsFile(final String key);

  void removeEntry(final String key);

  void removeFile(final String key);

  bool putBool(final String key, final bool value);

  int putInt(final String key, final int value);

  String putString(final String key, final String value);

  Object putObject(final String key, final Object object);

  File putFile(final String key, final ByteData bytes);

  bool? getBoolean(final String key);

  int? getInt(final String key);

  String? getString(final String key);

  T? getObject<T>(final String key, final Type type);

  File getFile(final String key);
}
