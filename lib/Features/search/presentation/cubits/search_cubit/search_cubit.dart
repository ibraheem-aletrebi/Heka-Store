import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/search/data/data_source/search_local_data_source.dart';
import 'package:heka_store/Features/search/domain/entities/search_filter.dart';
import 'package:heka_store/Features/search/domain/use_cases/search_products_usecase.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchProductsUseCase _searchProducts;
  final SearchLocalDataSource _local;

  SearchFilter _currentFilter = const SearchFilter();
  SearchFilter get currentFilter => _currentFilter;

  SearchCubit({
    required SearchProductsUseCase searchProducts,
    required SearchLocalDataSource local,
  }) : _searchProducts = searchProducts,
       _local = local,
       super(SearchInitial(history: local.getSearchHistory()));

  Future<void> search({String? term, SearchFilter? filter}) async {
    _currentFilter = (filter ?? _currentFilter).copyWith(
      searchTerm: term ?? _currentFilter.searchTerm,
      pageNumber: 1,
    );

    emit(const SearchLoading());

    final result = await _searchProducts(_currentFilter);

    result.when(
      onError: (failure) =>
          emit(SearchError(failure.serverMessage ?? 'An error occurred')),
      onSuccess: (products) => emit(
        SearchSuccess(
          products: products,
          filter: _currentFilter,
          isEmpty: products.isEmpty,
        ),
      ),
    );
  }

  Future<void> applyFilter(SearchFilter filter) async {
    _currentFilter = filter.copyWith(pageNumber: 1);
    await search();
  }

  void resetFilters() {
    _currentFilter = _currentFilter.resetFilters();
    if (_currentFilter.searchTerm?.isNotEmpty == true) {
      search();
    } else {
      emit(SearchInitial(history: _local.getSearchHistory()));
    }
  }

  void showHistory() {
    emit(SearchInitial(history: _local.getSearchHistory()));
  }

  Future<void> removeHistoryItem(String term) async {
    await _local.removeFromHistory(term);
    emit(SearchInitial(history: _local.getSearchHistory()));
  }

  Future<void> clearHistory() async {
    await _local.clearHistory();
    emit(SearchInitial(history: []));
  }
}
