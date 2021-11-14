import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  @override
  Future<bool> containsEntry({
    required final String key,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.containsKey(key));

  @override
  Future<bool> containsFile({
    required final String key,
  }) => _getFile(key: key)
    .then((file) => file.existsSync());

  @override
  Future<bool> removeEntry({
    required final String key,
  }) => SharedPreferences
    .getInstance().then((prefs) => prefs.remove(key));

  @override
  Future<void> removeFile({
    required final String key,
  }) => _getFile(key: key)
    .then((file) {
      if (file.existsSync()) {
        file.deleteSync();
      }
    });

  @override
  Future<bool> putBool({
    required final String key,
    required final bool value,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.setBool(key, value));

  @override
  Future<bool> putInt({
    required final String key,
    required final int value,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.setInt(key, value));

  @override
  Future<bool> putString({
    required final String key,
    required final String value,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.setString(key, value));

  @override
  Future<bool> putObject({
    required final String key,
    required final Object object,
  }) => jsonEncode(object)
    .let((json) => putString(
      key: key,
      value: json,
    ));

  @override
  Future<File> putFile({
    required final String key,
    required final Uint8List bytes,
  }) => _getFile(key: key)
    .then((file) {
      if (!file.existsSync()) {
        file.createSync(recursive: true);
      }
      file.writeAsBytesSync(bytes);
      return file;
    });

  @override
  Future<bool?> getBoolean({
    required final String key,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.getBool(key));

  @override
  Future<int?> getInt({
    required final String key,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.getInt(key));

  @override
  Future<String?> getString({
    required final String key,
  }) => SharedPreferences
    .getInstance()
    .then((prefs) => prefs.getString(key));

  @override
  Future<T?> getObject<T>({
    required final String key,
  }) => getString(key: key)
    .then((json) {
      if (json != null) {
        return jsonDecode(json) as T;
      } else {
        return null;
      }
    });

  @override
  Future<File?> getFile({
    required final String key,
  }) => _getFile(key: key)
    .then((file) {
      if (file.existsSync()) {
        return file;
      } else {
        return null;
      }
    });

  Future<File> _getFile({
    required final String key,
  }) => getApplicationSupportDirectory()
    .then((directory) {
      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }
      return File('${directory.path}/$key');
    });
}