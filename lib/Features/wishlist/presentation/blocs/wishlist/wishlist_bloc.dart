import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/add_to_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/get_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/remove_from_wishlist_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final GetWishlistUseCase _getWishlistUseCase;
  final AddToWishlistUseCase _addToWishlistUseCase;
  final RemoveFromWishlistUseCase _removeFromWishlistUseCase;

  WishlistBloc({
    required GetWishlistUseCase getWishlistUseCase,
    required AddToWishlistUseCase addToWishlistUseCase,
    required RemoveFromWishlistUseCase removeFromWishlistUseCase,
  }) : _getWishlistUseCase = getWishlistUseCase,
       _addToWishlistUseCase = addToWishlistUseCase,
       _removeFromWishlistUseCase = removeFromWishlistUseCase,
       super(
         WishlistState(
         ),
       ) {
    on<_Loaded>(_onLoaded);
    on<_ReLoaded>(_onReLoaded);
    on<_Toggled>(_onToggled);
    on<_NextPageFetched>(_onNextPageFetched);
  }


  Future<void> _onLoaded(_Loaded event, Emitter<WishlistState> emit) async {
    emit(
      state.copyWith(isLoading: true, error: null, lastToggledProductId: null),
    );

    final response = await _getWishlistUseCase();
    response.when(
      onSuccess: (data) => emit(
        state.copyWith(
          isLoading: false,
          items: data.items,
          hasNextPage: data.pageNumber < data.totalPages,
          currentPage: data.pageNumber,
        ),
      ),
      onError: (error) => emit(state.copyWith(isLoading: false, error: error)),
    );
  }

  Future<void> _onReLoaded(_ReLoaded event, Emitter<WishlistState> emit) async {
    final response = await _getWishlistUseCase();
    response.when(
      onSuccess: (data) => emit(
        state.copyWith(
          isLoading: false,
          items: data.items,
          hasNextPage: data.pageNumber < data.totalPages,
          currentPage: data.pageNumber,
        ),
      ),
      onError: (error) => emit(state.copyWith(isLoading: false, error: error)),
    );
  }
  // ─── Toggle (Authenticated) ────────────────────────────────────────────────

  Future<void> _onToggled(_Toggled event, Emitter<WishlistState> emit) async {
    final productId = event.productId;
    final isInWishlist = state.items.any((e) => e.productId == productId);

    emit(
      state.copyWith(
        loadingProductIds: [...state.loadingProductIds, productId],
        lastToggledProductId: null,
        error: null,
      ),
    );

    if (isInWishlist) {
      // ─── Remove ───────────────────────────────────
      final response = await _removeFromWishlistUseCase(productId);
      response.when(
        onSuccess: (_) => emit(
          state.copyWith(
            items: state.items.where((e) => e.productId != productId).toList(),
            loadingProductIds: state.loadingProductIds
                .where((id) => id != productId)
                .toList(),
            lastToggledProductId: productId,
          ),
        ),
        onError: (error) => emit(
          state.copyWith(
            loadingProductIds: state.loadingProductIds
                .where((id) => id != productId)
                .toList(),
            error: error,
          ),
        ),
      );
    } else {
      // ─── Add ──────────────────────────────────────
      final response = await _addToWishlistUseCase(productId);
      response.when(
        onSuccess: (item) => emit(
          state.copyWith(
            items: [...state.items, item],
            loadingProductIds: state.loadingProductIds
                .where((id) => id != productId)
                .toList(),
            lastToggledProductId: productId,
          ),
        ),
        onError: (error) => emit(
          state.copyWith(
            loadingProductIds: state.loadingProductIds
                .where((id) => id != productId)
                .toList(),
            error: error,
          ),
        ),
      );
    }
  }


  // ─── Next Page ─────────────────────────────────────────────────────────────

  Future<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<WishlistState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasNextPage) return;

    emit(state.copyWith(isLoadingMore: true));

    final response = await _getWishlistUseCase(
      pageNumber: state.currentPage + 1,
    );
    response.when(
      onSuccess: (data) => emit(
        state.copyWith(
          isLoadingMore: false,
          items: [...state.items, ...data.items],
          hasNextPage: data.pageNumber < data.totalPages,
          currentPage: data.pageNumber,
        ),
      ),
      onError: (error) =>
          emit(state.copyWith(isLoadingMore: false, error: error)),
    );
  }
}
