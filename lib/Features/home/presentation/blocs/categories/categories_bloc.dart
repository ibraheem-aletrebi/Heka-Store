import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';         
import 'package:heka_store/Features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';       

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase _getCategoriesUseCase;

  CategoriesBloc({
    required GetCategoriesUseCase getCategoriesUseCase,
  })  : _getCategoriesUseCase = getCategoriesUseCase,
        super(const CategoriesState()) {
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReloaded);
    on<_NextPageFetched>(_onNextPageFetched);
  }


  Future<void> _onLoaded(
    _Loaded event,
    Emitter<CategoriesState> emit,
  ) async {
    if (state.isLoading) return;

    emit(state.copyWith(
      isLoading: true,
      error: null,
    ));

    await _fetchCategories(emit);
  }


  Future<void> _onReloaded(
    _Reloaded event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(
      isRefreshing: true,
      error: null,
      currentPage: 1,
    ));

    await _fetchCategories(emit);
    emit(state.copyWith(isRefreshing: false));
  }


  Future<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<CategoriesState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasNextPage) return;

    emit(state.copyWith(
      isLoadingMore: true,
      error: null,
    ));

    final nextPage = state.currentPage + 1;

    final response = await _getCategoriesUseCase(
      pageNumber: nextPage,
      pageSize: 20,
    );

    response.when(
      onSuccess: (data) {
        final newCategories = data.categories.where(
          (newItem) => !state.categories.any(
            (e) => e.id == newItem.id,
          ),
        );

        emit(state.copyWith(
          isLoadingMore: false,
          categories: [
            ...state.categories,
            ...newCategories,
          ],
          hasNextPage: data.hasNextPage,
          currentPage: data.pageNumber,
        ));
      },
      onError: (error) {
        emit(state.copyWith(
          isLoadingMore: false,
          error: error,
        ));
      },
    );
  }


  Future<void> _fetchCategories(
    Emitter<CategoriesState> emit,
  ) async {
    final response = await _getCategoriesUseCase(
      pageNumber: 1,
      pageSize: 20,
    );

    response.when(
      onSuccess: (data) {
        emit(state.copyWith(
          categories: data.categories,
          isLoading: false,
          hasNextPage: data.hasNextPage,
          currentPage: data.pageNumber,
          error: null,
        ));
      },
      onError: (error) {
        emit(state.copyWith(
          isLoading: false,
          error: error,
        ));
      },
    );
  }
}