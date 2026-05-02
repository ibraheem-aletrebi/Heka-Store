import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/Features/home/presentation/blocs/category_product/category_product_state.dart';

class CategoryProductsCubit extends Cubit<CategoryProductsState> {
  CategoryProductsCubit(this._repo) : super(CategoryProductsInitial());

  final HomeRepo _repo;

  int _currentPage = 1;
  bool _isFetchingMore = false;

  Future<void> fetchProducts(String categoryCode) async {
    _currentPage = 1;
    emit(CategoryProductsLoading());

    final result = await _repo.getCategoryProducts(
      categoryCode: categoryCode,
      pageNumber: _currentPage,
    );

    result.when(
      onSuccess: (page) => emit(CategoryProductsLoaded(
        products: page.products,
        hasNextPage: page.hasNextPage,
        totalCount: page.totalCount,
      )),
      onError: (error) => emit(CategoryProductsError(error.toString())),
    );
  }

  Future<void> fetchMoreProducts(String categoryCode) async {
    final current = state;
    if (current is! CategoryProductsLoaded) return;
    if (!current.hasNextPage || _isFetchingMore) return;

    _isFetchingMore = true;
    _currentPage++;

    final result = await _repo.getCategoryProducts(
      categoryCode: categoryCode,
      pageNumber: _currentPage,
    );

    result.when(
      onSuccess: (page) => emit(CategoryProductsLoaded(
        products: [...current.products, ...page.products],
        hasNextPage: page.hasNextPage,
        totalCount: page.totalCount,
      )),
      onError: (error) {
        _currentPage--;
        emit(CategoryProductsError(error.toString()));
      },
    );

    _isFetchingMore = false;
  }
}