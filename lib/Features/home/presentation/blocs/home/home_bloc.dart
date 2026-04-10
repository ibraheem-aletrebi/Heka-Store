
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_banners_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_featured_products_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase _getBannersUseCase;
  final GetFeaturedProductsUseCase _getFeaturedProductsUseCase;

  HomeBloc({
    required GetBannersUseCase getBannersUseCase,
    required GetRecommendedProductsUseCase getRecommendedProductsUseCase,
    required GetFeaturedProductsUseCase getFeaturedProductsUseCase,
    required GetBrandsUseCase getBrandsUseCase,
  })  : _getBannersUseCase = getBannersUseCase,
        _getFeaturedProductsUseCase = getFeaturedProductsUseCase,
        super(const HomeState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
  on<_FeaturedNextPageFetched>(_onFeaturedNextPageFetched);
  }

  // ─── Started ───────────────────────────────────────────────────────────────

  Future<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      isBannersLoading: true,
      isFeaturedLoading: true,
    ));

    await Future.wait([
      _fetchBanners(emit),
      _fetchFeaturedProducts(emit),
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
      _fetchFeaturedProducts(emit),
    ]);

    emit(state.copyWith(isRefreshing: false));
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

 
}