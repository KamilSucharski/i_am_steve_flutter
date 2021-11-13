import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  @override
  Future<bool> containsEntry(final String key) {
    return SharedPreferences
      .getInstance()
      .then((prefs) => prefs.containsKey(key));
  }

  @override
  Future<bool> containsFile(final String key) {
    return _getFile(key)
      .then((file) => file.existsSync());
  }

  @override
  Future<bool> removeEntry(final String key) {
    return SharedPreferences
      .getInstance()
      .then((prefs) => prefs.remove(key));
  }

  @override
  Future<void> removeFile(final String key) {
    return _getFile(key)
      .then((file) {
        if (file.existsSync()) {
          file.deleteSync();
        }
      });
  }

  @override
  Future<bool> putBool(final String key, final bool value) {
    return SharedPreferences
      .getInstance()
      .then((prefs) => prefs.setBool(key, value));
  }

  @override
  Future<bool> putInt(final String key, final int value) {
    return SharedPreferences
      .getInstance()
      .then((prefs) => prefs.setInt(key, value));
  }

  @override
  Future<bool> putString(final String key, final String value) {
    return SharedPreferences
        .getInstance()
        .then((prefs) => prefs.setString(key, value));
  }

  @override
  Future<bool> putObject(final String key, final Object object) {
    final json = jsonEncode(object);
    return putString(key, json);
  }

  @override
  Future<File> putFile(final String key, final Uint8List bytes) {
    return _getFile(key)
      .then((file) {
          if (!file.existsSync()) {
            file.createSync(recursive: true);
          }
          file.writeAsBytesSync(bytes);
          return file;
      });
  }

  @override
  Future<bool?> getBoolean(final String key) {
    return SharedPreferences
        .getInstance()
        .then((prefs) => prefs.getBool(key));
  }

  @override
  Future<int?> getInt(final String key) {
    return SharedPreferences
        .getInstance()
        .then((prefs) => prefs.getInt(key));
  }

  @override
  Future<String?> getString(final String key) {
    return SharedPreferences
        .getInstance()
        .then((prefs) => prefs.getString(key));
  }

  @override
  Future<T?> getObject<T>(final String key) {
    return getString(key)
      .then((json) {
        if (json != null) {
          return jsonDecode(json) as T;
        } else {
          return null;
        }
      });
  }

  @override
  Future<File?> getFile(final String key) {
    return _getFile(key)
      .then((file) {
        if (file.existsSync()) {
          return file;
        } else {
          return null;
        }
      });
  }

  Future<File> _getFile(final String key) {
    return getApplicationSupportDirectory()
      .then((directory) {
        if (!directory.existsSync()) {
          directory.createSync(recursive: true);
        }
        return File('${directory.path}/$key');
      });
  }
}
