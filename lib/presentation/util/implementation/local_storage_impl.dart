import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:i_am_steve_flutter/data/util/abstraction/local_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  @override
  Stream<bool> containsEntry(final String key) {
    return SharedPreferences
      .getInstance()
      .asStream()
      .map((prefs) => prefs.containsKey(key));
  }

  @override
  Stream<bool> containsFile(final String key) {
    return _getFile(key)
      .flatMap((file) => file.exists().asStream());
  }

  @override
  Stream<bool> removeEntry(final String key) {
    return SharedPreferences
      .getInstance()
      .asStream()
      .flatMap((prefs) => prefs.remove(key).asStream());
  }

  @override
  Stream<void> removeFile(final String key) {
    return _getFile(key)
      .map((file) {
        if (file.existsSync()) {
          file.deleteSync();
        }
      });
  }

  @override
  Stream<bool> putBool(final String key, final bool value) {
    return SharedPreferences
      .getInstance()
      .asStream()
      .flatMap((prefs) => prefs.setBool(key, value).asStream());
  }

  @override
  Stream<bool> putInt(final String key, final int value) {
    return SharedPreferences
      .getInstance()
      .asStream()
      .flatMap((prefs) => prefs.setInt(key, value).asStream());
  }

  @override
  Stream<bool> putString(final String key, final String value) {
    return SharedPreferences
        .getInstance()
        .asStream()
        .flatMap((prefs) => prefs.setString(key, value).asStream());
  }

  @override
  Stream<bool> putObject(final String key, final Object object) {
    final String json = jsonEncode(object);
    return putString(key, json);
  }

  @override
  Stream<File> putFile(final String key, final Uint8List bytes) {
    return _getFile(key)
      .map((file) {
          if (!file.existsSync()) {
            file.createSync(recursive: true);
          }
          file.writeAsBytesSync(bytes);
          return file;
      });
  }

  @override
  Stream<bool?> getBoolean(final String key) {
    return SharedPreferences
        .getInstance()
        .asStream()
        .map((prefs) => prefs.getBool(key));
  }

  @override
  Stream<int?> getInt(final String key) {
    return SharedPreferences
        .getInstance()
        .asStream()
        .map((prefs) => prefs.getInt(key));
  }

  @override
  Stream<String?> getString(final String key) {
    return SharedPreferences
        .getInstance()
        .asStream()
        .map((prefs) => prefs.getString(key));
  }

  @override
  Stream<T?> getObject<T>(final String key) {
    return getString(key)
      .map((json) {
        if (json != null) {
          return jsonDecode(json) as T;
        } else {
          return null;
        }
      });
  }

  @override
  Stream<File?> getFile(final String key) {
    return _getFile(key)
      .map((file) {
        if (file.existsSync()) {
          return file;
        } else {
          return null;
        }
      });
  }

  Stream<File> _getFile(final String key) {
    return getApplicationSupportDirectory()
      .asStream()
      .map((directory) {
        if (!directory.existsSync()) {
          directory.createSync(recursive: true);
        }
        final String path = directory.path;
        return File('$path/$key');
      });
  }
}
