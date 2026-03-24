// wishlist_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/wishlist/data/data_source/guest_wishlist_local_data_source.dart';
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
  final GuestWishlistLocalDataSource _guestLocalDataSource;

  WishlistBloc({
    required GetWishlistUseCase getWishlistUseCase,
    required AddToWishlistUseCase addToWishlistUseCase,
    required RemoveFromWishlistUseCase removeFromWishlistUseCase,
    required GuestWishlistLocalDataSource guestLocalDataSource,
  })  : _getWishlistUseCase = getWishlistUseCase,
        _addToWishlistUseCase = addToWishlistUseCase,
        _removeFromWishlistUseCase = removeFromWishlistUseCase,
        _guestLocalDataSource = guestLocalDataSource,
        super(WishlistState(
          // ─── حمل الـ guest ids عند الإنشاء ───────
          guestProductIds: guestLocalDataSource.getProductIds(),
        )) {
    on<_Loaded>(_onLoaded);
    on<_Toggled>(_onToggled);
    on<_NextPageFetched>(_onNextPageFetched);
    on<_GuestToggled>(_onGuestToggled);
    on<_SyncGuestWishlist>(_onSyncGuestWishlist);
  }

  // ─── Load ──────────────────────────────────────────────────────────────────

  Future<void> _onLoaded(
    _Loaded event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      error: null,
      lastToggledProductId: null,
    ));

    final response = await _getWishlistUseCase();
    response.when(
      onSuccess: (data) => emit(state.copyWith(
        isLoading: false,
        items: data.items,
        hasNextPage: data.pageNumber < data.totalPages,
        currentPage: data.pageNumber,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }

  // ─── Toggle (Authenticated) ────────────────────────────────────────────────

  Future<void> _onToggled(
    _Toggled event,
    Emitter<WishlistState> emit,
  ) async {
    final productId = event.productId;
    final isInWishlist = state.items.any((e) => e.productId == productId);

    emit(state.copyWith(
      loadingProductIds: [...state.loadingProductIds, productId],
      lastToggledProductId: null,
      error: null,
    ));

    if (isInWishlist) {
      // ─── Remove ───────────────────────────────────
      final response = await _removeFromWishlistUseCase(productId);
      response.when(
        onSuccess: (_) => emit(state.copyWith(
          items: state.items
              .where((e) => e.productId != productId)
              .toList(),
          loadingProductIds: state.loadingProductIds
              .where((id) => id != productId)
              .toList(),
          lastToggledProductId: productId,
        )),
        onError: (error) => emit(state.copyWith(
          loadingProductIds: state.loadingProductIds
              .where((id) => id != productId)
              .toList(),
          error: error,
        )),
      );
    } else {
      // ─── Add ──────────────────────────────────────
      final response = await _addToWishlistUseCase(productId);
      response.when(
        onSuccess: (item) => emit(state.copyWith(
          items: [...state.items, item],
          loadingProductIds: state.loadingProductIds
              .where((id) => id != productId)
              .toList(),
          lastToggledProductId: productId,
        )),
        onError: (error) => emit(state.copyWith(
          loadingProductIds: state.loadingProductIds
              .where((id) => id != productId)
              .toList(),
          error: error,
        )),
      );
    }
  }

  // ─── Guest Toggle ──────────────────────────────────────────────────────────

  void _onGuestToggled(
    _GuestToggled event,
    Emitter<WishlistState> emit,
  ) {
    final productId = event.productId;
    final isInGuest = state.guestProductIds.contains(productId);

    if (isInGuest) {
      _guestLocalDataSource.removeProductId(productId);
      emit(state.copyWith(
        guestProductIds: state.guestProductIds
            .where((id) => id != productId)
            .toList(),
        lastToggledProductId: productId,
      ));
    } else {
      _guestLocalDataSource.addProductId(productId);
      emit(state.copyWith(
        guestProductIds: [...state.guestProductIds, productId],
        lastToggledProductId: productId,
      ));
    }
  }

  // ─── Sync Guest Wishlist ───────────────────────────────────────────────────

  Future<void> _onSyncGuestWishlist(
    _SyncGuestWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final guestIds = _guestLocalDataSource.getProductIds();
    if (guestIds.isEmpty) return;

    emit(state.copyWith(isSyncing: true));

    // ─── ارفع كل item على السيرفر ─────────────────
    for (final productId in guestIds) {
      await _addToWishlistUseCase(productId);
    }

    // ─── امسح الـ guest wishlist ──────────────────
    await _guestLocalDataSource.clear();

    emit(state.copyWith(
      isSyncing: false,
      guestProductIds: [],
    ));

    // ─── حمل الـ wishlist من السيرفر ─────────────
    add(const WishlistEvent.loaded());
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
      onSuccess: (data) => emit(state.copyWith(
        isLoadingMore: false,
        items: [...state.items, ...data.items],
        hasNextPage: data.pageNumber < data.totalPages,
        currentPage: data.pageNumber,
      )),
      onError: (error) => emit(state.copyWith(
        isLoadingMore: false,
        error: error,
      )),
    );
  }
}