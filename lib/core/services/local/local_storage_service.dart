import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  LocalStorageService._internal();
  static final LocalStorageService _instance = LocalStorageService._internal();
  factory LocalStorageService() => _instance;

  final Map<String, Box> _boxes = {};

  Future<void> init({required List<String> boxNames,Function ? regesterAdapters}) async {
    await Hive.initFlutter();
   if(regesterAdapters != null) regesterAdapters();
    for (final name in boxNames) {
      _boxes[name] = await Hive.openBox(name);
    }
  }

  Future<void> setValue<T>(String boxName, String key, T value) async {
    await _box(boxName).put(key, value);
  }

  T? getValue<T>(String boxName, String key) {
    return _box(boxName).get(key);
   
  }

  Future<void> setJson(
    String boxName,
    String key,
    Map<String, dynamic> value,
  ) async {
    await _box(boxName).put(key, value);
  }

  Map<String, dynamic>? getJson(String boxName, String key) {
    final data = _box(boxName).get(key);
    if (data == null) return null;
    return Map<String, dynamic>.from(data as Map);
  }

  Future<void> remove(String boxName, String key) async {
    await _box(boxName).delete(key);
  }

  bool contains(String boxName, String key) {
    return _box(boxName).containsKey(key);
  }

  Future<void> clearBox(String boxName) async {
    await _box(boxName).clear();
  }

  Future<void> clearAll() async {
    for (final box in _boxes.values) {
      await box.clear();
    }
  }

  Box _box(String name) {
    final box = _boxes[name];
    if (box == null) throw Exception('Box "$name" is not opened');
    return box;
  }
}
