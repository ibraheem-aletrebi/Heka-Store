import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_products_you_may_like.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'may_like_event.dart';
part 'may_like_state.dart';
part 'may_like_bloc.freezed.dart';

class MayLikeBloc extends Bloc<MayLikeEvent, MayLikeState> {
  final GetProductsYouMayLike _getProductsYouMayLike; // fixed type

  MayLikeBloc({required GetProductsYouMayLike getProductsYouMayLike})
      : _getProductsYouMayLike = getProductsYouMayLike,
        super(const MayLikeState()) { // fixed initial state
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReloaded);
    on<_NextPageFetched>(_onNextPageFetched); // aligned with event name
  }

  Future<void> _onLoaded(_Loaded event, Emitter<MayLikeState> emit) async {
    emit(state.copyWith(isLoading: true));
    await _fetchProducts(emit);
  }

  Future<void> _onReloaded(_Reloaded event, Emitter<MayLikeState> emit) async {
    await _fetchProducts(emit);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<MayLikeState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasNextPage) return;
    emit(state.copyWith(isLoadingMore: true));

    final response = await _getProductsYouMayLike(
      pageNumber: state.currentPage + 1,
    );
    response.when(
      onSuccess: (data) => emit(state.copyWith(
        isLoadingMore: false,
        products: [...state.products, ...data.products],
        hasNextPage: data.hasNextPage,
        currentPage: data.pageNumber,
      )),
      onError: (error) => emit(state.copyWith(
        isLoadingMore: false,
        error: error,
      )),
    );
  }

  Future<void> _fetchProducts(Emitter<MayLikeState> emit) async {
    final response = await _getProductsYouMayLike();
    response.when(
      onSuccess: (data) => emit(state.copyWith(
        products: data.products,
        isLoading: false,
        hasNextPage: data.hasNextPage,
        currentPage: data.pageNumber,
        error: null,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }
}