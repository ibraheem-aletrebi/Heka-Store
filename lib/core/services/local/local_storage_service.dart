import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  LocalStorageService._internal();
  static final LocalStorageService _instance = LocalStorageService._internal();
  factory LocalStorageService() => _instance;

  static const String _defaultBoxName = 'app_box';
  late Box _box;


  Future<void> init({
    String boxName = _defaultBoxName,
    List<TypeAdapter> adapters = const [],
  }) async {
    await Hive.initFlutter();
    for (final adapter in adapters) {
      if (!Hive.isAdapterRegistered(adapter.typeId)) {
        Hive.registerAdapter(adapter);
      }
    }

    _box = await Hive.openBox(boxName);
  }


  Future<void> setValue<T>(String key, T value) async {
    await _box.put(key, value);
  }

  Future<void> setJson(String key, Map<String, dynamic> value) async {
    await _box.put(key, value);
  }

  T? getValue<T>(String key) {
    return _box.get(key) as T?;
  }

  Map<String, dynamic>? getJson(String key) {
    final data = _box.get(key);
    if (data == null) return null;
    return Map<String, dynamic>.from(data as Map);
  }

  Future<void> remove(String key) async {
    await _box.delete(key);
  }

  Future<void> clear() async {
    await _box.clear();
  }

  bool contains(String key) {
    return _box.containsKey(key);
  }
}