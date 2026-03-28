import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/domain/use_cases/get_similar_product_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'similar_products_event.dart';
part 'similar_products_state.dart';
part 'similar_products_bloc.freezed.dart';

class SimilarProductsBloc
    extends Bloc<SimilarProductsEvent, SimilarProductsState> {
  final GetSimilarProductsUseCase _getSimilarProductsUseCase;

  SimilarProductsBloc({
    required GetSimilarProductsUseCase getSimilarProductsUseCase,
  })  : _getSimilarProductsUseCase = getSimilarProductsUseCase,
        super(const SimilarProductsState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<SimilarProductsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result =
        await _getSimilarProductsUseCase(event.categoryId);
    result.when(
      onSuccess: (products) => emit(state.copyWith(
        isLoading: false,
        products: products
            .where((p) => p.id != event.excludeProductId)
            .toList(),
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }
}