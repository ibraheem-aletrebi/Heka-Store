import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/Features/brand_profile/data/use_cases/get_brand_products_use_case.dart';
import 'package:heka_store/Features/brand_profile/data/use_cases/get_brand_profile_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'brand_profile_event.dart';
part 'brand_profile_state.dart';
part 'brand_profile_bloc.freezed.dart';

class BrandProfileBloc extends Bloc<BrandProfileEvent, BrandProfileState> {
  final GetBrandProfileUseCase _getBrandProfile;
  final GetBrandProductsUseCase _getBrandProducts;

  BrandProfileBloc({
    required GetBrandProfileUseCase getBrandProfile,
    required GetBrandProductsUseCase getBrandProducts,
  })  : _getBrandProfile = getBrandProfile,
        _getBrandProducts = getBrandProducts,
        super(const BrandProfileState()) {
    on<_Loaded>(_onLoaded);
  }

  Future<void> _onLoaded(_Loaded event, Emitter<BrandProfileState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    final results = await Future.wait([
      _getBrandProfile(event.brandId),
      _getBrandProducts(event.brandId),
    ]);

    final profileResult = results[0];
    final productsResult = results[1];

    profileResult.when(
      onSuccess: (brand) => emit(state.copyWith(brand: brand as BrandProfileModel)),
      onError: (e) => emit(state.copyWith(error: e)),
    );

    productsResult.when(
      onSuccess: (products) => emit(state.copyWith(
        products: products as List<BrandProductModel>,
        isLoading: false,
      )),
      onError: (e) => emit(state.copyWith(isLoading: false, error: e)),
    );
  }
}