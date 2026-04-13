// features/search/data/datasources/search_local_datasource.dart

import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class SearchLocalDataSource {
  List<String> getSearchHistory();
  Future<void> addToHistory(String term);
  Future<void> clearHistory();
  Future<void> removeFromHistory(String term);
}

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  final LocalStorageService _localStorage;

  static const _maxHistory = 15;

  const SearchLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  @override
  List<String> getSearchHistory() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.searchHistory,
    );
    return data?.cast<String>() ?? [];
  }

  @override
  Future<void> addToHistory(String term) async {
    if (term.trim().isEmpty) return;
    final history = getSearchHistory();
    history.remove(term);
    history.insert(0, term);
    if (history.length > _maxHistory) history.removeLast();
    await _localStorage.setValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.searchHistory,
      history,
    );
  }

  @override
  Future<void> clearHistory() async {
    await _localStorage.setValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.searchHistory,
      [],
    );
  }

  @override
  Future<void> removeFromHistory(String term) async {
    final history = getSearchHistory()..remove(term);
    await _localStorage.setValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.searchHistory,
      history,
    );
  }
}