import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
part 'recommended_for_you_event.dart';
part 'recommended_for_you_state.dart';
part 'recommended_for_you_bloc.freezed.dart';

class RecommendedForYouBloc extends Bloc<RecommendedForYouEvent, RecommendedForYouState> {
  final GetRecommendedProductsUseCase _getRecommendedProductsUseCase;

  RecommendedForYouBloc({
    required GetRecommendedProductsUseCase getRecommendedProductsUseCase,
  })  : 
        _getRecommendedProductsUseCase = getRecommendedProductsUseCase,
        super(const RecommendedForYouState()) {
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReLoaded);
    on<_RecommendedNextPageFetched>(_onRecommendedNextPageFetched);
  }

  Future<void> _onLoaded(
    _Loaded event,
    Emitter<RecommendedForYouState> emit,
  ) async {
    emit(state.copyWith(
      isRecommendedLoading: true,
    ));
    await 
      _fetchRecommendedProducts(emit);
  }

  Future<void> _onReLoaded(
    _Reloaded event,
    Emitter<RecommendedForYouState> emit,
  ) async {

    await  _fetchRecommendedProducts(emit);
    emit(state.copyWith(isRefreshing: false));
  }

Future<void> _onRecommendedNextPageFetched(
  _RecommendedNextPageFetched event,
  Emitter<RecommendedForYouState> emit,
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


  Future<void> _fetchRecommendedProducts(Emitter<RecommendedForYouState> emit) async {
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

  
}
