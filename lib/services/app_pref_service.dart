import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class AppPrefService {
  SharedPreferences? preferences;

  void init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<Map<String, dynamic>?> getDocData(String key) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    final docData = pref.getString(key);
    if (docData != null) {
      final jsonData = jsonDecode(docData);
      return jsonData;
    } else {
      return null;
    }
  }

  Future<void> removeItem(String key) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    pref.remove(key);
  }

  Future<void> setString({required String value, required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  Future<void> setBool({required bool value, required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    pref.setBool(key, value);
  }

  Future<bool> getBool({required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    final value = pref.getBool(key);
    return value ?? false;
  }

  Future<String?> getString({required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    final value = pref.getString(key);
    return value;
  }

  void clearPref() async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    pref.clear();
  }

  Future<void> setStringList(
      {required List<String> value, required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    pref.setStringList(key, value);
  }

  Future<dynamic> getStringList({required String key}) async {
    final pref = preferences ?? await SharedPreferences.getInstance();
    return pref.getStringList(key);
  }
}
