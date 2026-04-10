import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class BrandLocalDataSource {
  Future<void> saveBrandProfile(BrandProfileModel profile);
  BrandProfileModel? getBrandProfile(int brandId);

  Future<void> saveBrandProducts(int brandId, List<BrandProductModel> products);
  List<BrandProductModel> getBrandProducts(int brandId);

  Future<void> clearBrand(int brandId);
}

class BrandLocalDataSourceImpl implements BrandLocalDataSource {
  final LocalStorageService _localStorage;

  const BrandLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  // ── Brand Profile ─────────────────────────────────────────────────────────

  @override
  Future<void> saveBrandProfile(BrandProfileModel profile) async {
    await _localStorage.setValue<BrandProfileModel>(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProfile}_${profile.id}',
      profile,
    );
  }

  @override
  BrandProfileModel? getBrandProfile(int brandId) {
    return _localStorage.getValue<BrandProfileModel>(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProfile}_$brandId',
    );
  }

  // ── Brand Products ────────────────────────────────────────────────────────

  @override
  Future<void> saveBrandProducts(
    int brandId,
    List<BrandProductModel> products,
  ) async {
    await _localStorage.setValue<List>(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProducts}_$brandId',
      products,
    );
  }

  @override
  List<BrandProductModel> getBrandProducts(int brandId) {
    final data = _localStorage.getValue<List>(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProducts}_$brandId',
    );
    return data?.cast<BrandProductModel>() ?? [];
  }

  // ── Clear ─────────────────────────────────────────────────────────────────

  @override
  Future<void> clearBrand(int brandId) async {
    await _localStorage.remove(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProfile}_$brandId',
    );
    await _localStorage.remove(
      HiveBoxes.brands,
      '${LocalStorageKeys.brandProducts}_$brandId',
    );
  }
}