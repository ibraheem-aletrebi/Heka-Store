
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_banners_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_featured_products_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase _getBannersUseCase;
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetRecommendedProductsUseCase _getRecommendedProductsUseCase;
  final GetFeaturedProductsUseCase _getFeaturedProductsUseCase;
  final GetBrandsUseCase _getBrandsUseCase;

  HomeBloc({
    required GetBannersUseCase getBannersUseCase,
    required GetCategoriesUseCase getCategoriesUseCase,
    required GetRecommendedProductsUseCase getRecommendedProductsUseCase,
    required GetFeaturedProductsUseCase getFeaturedProductsUseCase,
    required GetBrandsUseCase getBrandsUseCase,
  })  : _getBannersUseCase = getBannersUseCase,
        _getCategoriesUseCase = getCategoriesUseCase,
        _getRecommendedProductsUseCase = getRecommendedProductsUseCase,
        _getFeaturedProductsUseCase = getFeaturedProductsUseCase,
        _getBrandsUseCase = getBrandsUseCase,
        super(const HomeState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_RecommendedNextPageFetched>(_onRecommendedNextPageFetched);
  on<_FeaturedNextPageFetched>(_onFeaturedNextPageFetched);
  }

  // ─── Started ───────────────────────────────────────────────────────────────

  Future<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      isBannersLoading: true,
      isCategoriesLoading: true,
      isRecommendedLoading: true,
      isFeaturedLoading: true,
      isBrandsLoading: true,
    ));

    await Future.wait([
      _fetchBanners(emit),
      _fetchCategories(emit),
      _fetchRecommendedProducts(emit),
      _fetchFeaturedProducts(emit),
      _fetchBrands(emit),
    ]);
  }

  // ─── Refreshed ─────────────────────────────────────────────────────────────

  Future<void> _onRefreshed(
    _Refreshed event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isRefreshing: true));

    await Future.wait([
      _fetchBanners(emit),
      _fetchCategories(emit),
      _fetchRecommendedProducts(emit),
      _fetchFeaturedProducts(emit),
      _fetchBrands(emit),
    ]);

    emit(state.copyWith(isRefreshing: false));
  }




// ─── Recommended Next Page ─────────────────────────────────────────────────

Future<void> _onRecommendedNextPageFetched(
  _RecommendedNextPageFetched event,
  Emitter<HomeState> emit,
) async {
  if (state.isRecommendedLoadingMore || !state.hasRecommendedNextPage) return;

  emit(state.copyWith(isRecommendedLoadingMore: true));

  final response = await _getRecommendedProductsUseCase(
    pageNumber: state.recommendedCurrentPage + 1,
  );

  response.when(
    onSuccess: (data) => emit(state.copyWith(
      isRecommendedLoadingMore: false,
      recommendedProducts: [...state.recommendedProducts, ...data.products],
      hasRecommendedNextPage: data.hasNextPage,
      recommendedCurrentPage: data.pageNumber,
    )),
    onError: (error) => emit(state.copyWith(
      isRecommendedLoadingMore: false,
      recommendedError: error,
    )),
  );
}

// ─── Featured Next Page ────────────────────────────────────────────────────

Future<void> _onFeaturedNextPageFetched(
  _FeaturedNextPageFetched event,
  Emitter<HomeState> emit,
) async {
  if (state.isFeaturedLoadingMore || !state.hasFeaturedNextPage) return;

  emit(state.copyWith(isFeaturedLoadingMore: true));

  final response = await _getFeaturedProductsUseCase(
    pageNumber: state.featuredCurrentPage + 1,
  );

  response.when(
    onSuccess: (data) => emit(state.copyWith(
      isFeaturedLoadingMore: false,
      featuredProducts: [...state.featuredProducts, ...data.products],
      hasFeaturedNextPage: data.hasNextPage,
      featuredCurrentPage: data.pageNumber,
    )),
    onError: (error) => emit(state.copyWith(
      isFeaturedLoadingMore: false,
      featuredError: error,
    )),
  );
}
  // ─── Fetch Helpers ─────────────────────────────────────────────────────────

  Future<void> _fetchBanners(Emitter<HomeState> emit) async {
    final response = await _getBannersUseCase();
    response.when(
      onSuccess: (banners) => emit(state.copyWith(
        banners: banners,
        isBannersLoading: false,
        bannersError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isBannersLoading: false,
        bannersError: error,
      )),
    );
  }

  Future<void> _fetchCategories(Emitter<HomeState> emit) async {
    final response = await _getCategoriesUseCase();
    response.when(
      onSuccess: (categories) => emit(state.copyWith(
        categories: categories,
        isCategoriesLoading: false,
        categoriesError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isCategoriesLoading: false,
        categoriesError: error,
      )),
    );
  }

  Future<void> _fetchRecommendedProducts(Emitter<HomeState> emit) async {
    final response = await _getRecommendedProductsUseCase();
    response.when(
      onSuccess: (data) => emit(state.copyWith(
        recommendedProducts: data.products,
        isRecommendedLoading: false,
        hasRecommendedNextPage: data.hasNextPage,
        recommendedCurrentPage: data.pageNumber,
        recommendedError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isRecommendedLoading: false,
        recommendedError: error,
      )),
    );
  }

  Future<void> _fetchFeaturedProducts(Emitter<HomeState> emit) async {
    final response = await _getFeaturedProductsUseCase();
    response.when(
      onSuccess: (data) => emit(state.copyWith(
        featuredProducts: data.products,
        isFeaturedLoading: false,
        hasFeaturedNextPage: data.hasNextPage,
        featuredCurrentPage: data.pageNumber,
        featuredError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isFeaturedLoading: false,
        featuredError: error,
      )),
    );
  }

  Future<void> _fetchBrands(Emitter<HomeState> emit) async {
    final response = await _getBrandsUseCase();
    response.when(
      onSuccess: (brands) => emit(state.copyWith(
        brands: brands,
        isBrandsLoading: false,
        brandsError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isBrandsLoading: false,
        brandsError: error,
      )),
    );
  }
}