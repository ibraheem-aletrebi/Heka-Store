// import 'package:heka_store/Features/home/data/product/product_model.dart';
// import 'package:heka_store/core/constants/hive_boxes.dart';
// import 'package:heka_store/core/constants/local_storage_keys.dart';
// import 'package:heka_store/core/services/local/local_storage_service.dart';

// abstract class HomeLocalDataSource {
//   Future<void> saveRecommendedProducts(List<ProductModel> products);
//   List<ProductModel> getRecommendedProducts();
//   Future<void> clearRecommendedProducts();

//   Future<void> saveLastFetchTime();
//   bool isCacheValid({int maxAgeMinutes = 20});
// }

// class HomeLocalDataSourceImpl implements HomeLocalDataSource {
//   final LocalStorageService _localStorage;

//   const HomeLocalDataSourceImpl({required LocalStorageService localStorage})
//     : _localStorage = localStorage;

//   // ─── Products ─────────────────────────────────────────────────────────────

//   @override
//   Future<void> saveRecommendedProducts(List<ProductModel> products) async {
//     await _localStorage.setValue<List>(
//       HiveBoxes.data,
//       LocalStorageKeys.recommendedProducts,
//       products,
//     );
//     await saveLastFetchTime();
//   }

//   @override
//   List<ProductModel> getRecommendedProducts() {
//     final data = _localStorage.getValue<List>(
//       HiveBoxes.data,
//       LocalStorageKeys.recommendedProducts,
//     );
//     if (data == null) return [];
//     return data.cast<ProductModel>();
//   }

//   @override
//   Future<void> clearRecommendedProducts() async {
//     await _localStorage.remove(
//       HiveBoxes.data,
//       LocalStorageKeys.recommendedProducts,
//     );
//   }

//   @override
//   Future<void> saveLastFetchTime() async {
//     await _localStorage.setValue<int>(
//       HiveBoxes.data,
//       LocalStorageKeys.productsLastFetch,
//       DateTime.now().millisecondsSinceEpoch,
//     );
//   }

//   @override
//   bool isCacheValid({int maxAgeMinutes = 10}) {
//     final lastFetch = _localStorage.getValue<int>(
//       HiveBoxes.data,
//       LocalStorageKeys.productsLastFetch,
//     );
//     if (lastFetch == null) return false;
//     final lastFetchTime = DateTime.fromMillisecondsSinceEpoch(lastFetch);
//     final diff = DateTime.now().difference(lastFetchTime).inMinutes;
//     return diff < maxAgeMinutes;
//   }
// }
