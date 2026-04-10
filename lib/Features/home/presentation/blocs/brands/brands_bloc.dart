import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'brands_event.dart';
part 'brands_state.dart';
part 'brands_bloc.freezed.dart';

class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  final GetBrandsUseCase _getBrandsUseCase;

  BrandsBloc({required GetBrandsUseCase getBrandsUseCase})
      : _getBrandsUseCase = getBrandsUseCase,
        super(const BrandsState()) {
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReloaded);
    on<_NextPage>(_onNextPage);
  }

  Future<void> _onLoaded(_Loaded event, Emitter<BrandsState> emit) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true, error: null));
    await _fetchPage(emit, page: 1, replace: true);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onReloaded(_Reloaded event, Emitter<BrandsState> emit) async {
    emit(state.copyWith(isRefreshing: true, error: null));
    await _fetchPage(emit, page: 1, replace: true);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _onNextPage(_NextPage event, Emitter<BrandsState> emit) async {
    if (state.isPaginating || !state.hasNextPage) return;
    emit(state.copyWith(isPaginating: true, error: null));
    await _fetchPage(emit, page: state.currentPage + 1, replace: false);
    emit(state.copyWith(isPaginating: false));
  }

  Future<void> _fetchPage(
    Emitter<BrandsState> emit, {
    required int page,
    required bool replace,
  }) async {
    final response = await _getBrandsUseCase(pageNumber: page);
    response.when(
      onSuccess: (result) {
        final brands = replace
            ? result.items
            : [...state.brands, ...result.items];

        emit(state.copyWith(
          brands: brands,
          currentPage: result.pageNumber,
          hasNextPage: result.hasNextPage,
          error: null,
        ));
      },
      onError: (error) => emit(state.copyWith(error: error)),
    );
  }
}