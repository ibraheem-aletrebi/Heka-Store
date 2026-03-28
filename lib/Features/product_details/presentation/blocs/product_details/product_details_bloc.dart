import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';
import 'package:heka_store/Features/product_details/domain/use_cases/get_product_details_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetProductDetailsUseCase _getProductDetailsUseCase;

  ProductDetailsBloc({
    required GetProductDetailsUseCase getProductDetailsUseCase,
  })  : _getProductDetailsUseCase = getProductDetailsUseCase,
        super(const ProductDetailsState()) {
    on<_Started>(_onStarted);
    on<_VariantOptionSelected>(_onVariantOptionSelected);
    on<_QuantityIncremented>(_onQuantityIncremented);
    on<_QuantityDecremented>(_onQuantityDecremented);
    on<_ImagePageChanged>(_onImagePageChanged);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _getProductDetailsUseCase(event.productId);
    result.when(
      onSuccess: (product) => emit(state.copyWith(
        isLoading: false,
        product: product,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }

  void _onVariantOptionSelected(
    _VariantOptionSelected event,
    Emitter<ProductDetailsState> emit,
  ) {
    final updated = Map<String, ProductVariantOptionModel>.from(
        state.selectedOptions);
    if (updated[event.typeName]?.id == event.option.id) {
      updated.remove(event.typeName);
    } else {
      updated[event.typeName] = event.option;
    }
    emit(state.copyWith(selectedOptions: updated));
  }

  void _onQuantityIncremented(
    _QuantityIncremented event,
    Emitter<ProductDetailsState> emit,
  ) {
    final max = state.product?.stockQuantity ?? 99;
    if (state.quantity < max) {
      emit(state.copyWith(quantity: state.quantity + 1));
    }
  }

  void _onQuantityDecremented(
    _QuantityDecremented event,
    Emitter<ProductDetailsState> emit,
  ) {
    if (state.quantity > 1) {
      emit(state.copyWith(quantity: state.quantity - 1));
    }
  }

  void _onImagePageChanged(
    _ImagePageChanged event,
    Emitter<ProductDetailsState> emit,
  ) {
    emit(state.copyWith(currentImageIndex: event.index));
  }
}