import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';

import 'package:i_am_steve_flutter/domain/util/abstraction/localStorage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {

  @override
  Future<bool> containsEntry(final String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  @override
  Future<bool> containsFile(final String key) async {
    final File file = await _getFile(key);
    return file.exists();
  }

  @override
  Future<bool> removeEntry(final String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  @override
  Future<void> removeFile(final String key) async {
    final File file = await _getFile(key);
    if (await file.exists()) {
      await file.delete();
    }
  }

  @override
  Future<bool> putBool(final String key, final bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  @override
  Future<bool> putInt(final String key, final int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  @override
  Future<bool> putString(final String key, final String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  @override
  Future<bool> putObject(final String key, final Object object) {
    final String json = jsonEncode(object);
    return putString(key, json);
  }

  @override
  Future<File> putFile(final String key, final ByteData bytes) async {
    final File file = await _getFile(key);
    final ByteBuffer buffer = bytes.buffer;
    return await file.writeAsBytes(buffer.asUint8List(
        bytes.offsetInBytes,
        bytes.lengthInBytes
    ));
  }

  @override
  Future<bool?> getBoolean(final String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  @override
  Future<int?> getInt(final String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  @override
  Future<String?> getString(final String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<T?> getObject<T>(final String key) async {
    final String? json = await getString(key);
    if (json != null) {
      return jsonDecode(json) as T;
    } else {
      return null;
    }
  }

  @override
  Future<File?> getFile(final String key) async {
    final File file = await _getFile(key);
    if (await file.exists()) {
      return file;
    } else {
      return null;
    }
  }

  Future<File> _getFile(final String key) async {
    final Directory path = await getApplicationDocumentsDirectory();
    return File('$path/$key');
  }
}