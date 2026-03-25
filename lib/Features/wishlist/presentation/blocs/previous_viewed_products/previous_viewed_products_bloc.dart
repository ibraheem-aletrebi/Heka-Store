import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/wishlist/data/data_source/previous_viewed_products_data_source.dart';

part 'previous_viewed_products_event.dart';
part 'previous_viewed_products_state.dart';
part 'previous_viewed_products_bloc.freezed.dart';

class PreviousViewedProductsBloc
    extends Bloc<PreviousViewedProductsEvent, PreviousViewedProductsState> {
  final PreviousViewedProductsDataSource _dataSource;

  PreviousViewedProductsBloc({
    required PreviousViewedProductsDataSource dataSource,
  })  : _dataSource = dataSource,
        super(const PreviousViewedProductsState.initial()) {
    on<_GetProducts>(_onGetProducts);
    on<_AddProduct>(_onAddProduct);
    on<_RemoveProduct>(_onRemoveProduct);
    on<_Clear>(_onClear);
  }

  Future<void> _onGetProducts(
    _GetProducts event,
    Emitter<PreviousViewedProductsState> emit,
  ) async {
    emit(const PreviousViewedProductsState.loading());
    try {
      final products = _dataSource.getProduct();
      emit(PreviousViewedProductsState.loaded(products: products));
    } catch (e) {
      emit(PreviousViewedProductsState.error(message: e.toString()));
    }
  }

  Future<void> _onAddProduct(
    _AddProduct event,
    Emitter<PreviousViewedProductsState> emit,
  ) async {
    try {
      final updatedProducts = await _dataSource.addProduct(event.product);
      emit(PreviousViewedProductsState.loaded(products: updatedProducts));
    } catch (e) {
      emit(PreviousViewedProductsState.error(message: e.toString()));
    }
  }

  Future<void> _onRemoveProduct(
    _RemoveProduct event,
    Emitter<PreviousViewedProductsState> emit,
  ) async {
    try {
      await _dataSource.removeProduct(event.productId);
      final products = _dataSource.getProduct();
      emit(PreviousViewedProductsState.loaded(products: products));
    } catch (e) {
      emit(PreviousViewedProductsState.error(message: e.toString()));
    }
  }

  Future<void> _onClear(
    _Clear event,
    Emitter<PreviousViewedProductsState> emit,
  ) async {
    try {
      await _dataSource.clear();
      emit(const PreviousViewedProductsState.loaded(products: []));
    } catch (e) {
      emit(PreviousViewedProductsState.error(message: e.toString()));
    }
  }
}