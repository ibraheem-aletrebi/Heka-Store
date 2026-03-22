import 'package:get_it/get_it.dart';
import 'package:heka_store/Features/address/data/data_source/address_local_data_source.dart';
import 'package:heka_store/Features/address/data/data_source/address_remote_data_source.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/repos/address_repo_imp.dart';
import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/Features/address/domain/user_cases/add_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/delete_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/get_addresses_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/set_default_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/update_address_use_case.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_local_data_source.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/models/login/user_model.dart';
import 'package:heka_store/Features/auth/data/repos/auth_repo_imp.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/Features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/forgot_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/reset_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/verify_reset_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/register_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/home/data/data_source/home_local_data_srouce.dart';
import 'package:heka_store/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/data/repos/home_repo_imp.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_banners_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_featured_products_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:heka_store/Features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_local_data_source.dart';
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_remote_data_source.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/data/repos/wishlist_repo_impl.dart';
import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/add_to_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/get_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/is_in_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/remove_from_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/bloc/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/services/nominatim/nominatim_service.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import 'package:heka_store/core/services/remote/dio_client.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  _initAuth();
  _initAddress();
  _initHome();
  _initWishlist();
}

// ─── Core ─────────────────────────────────────────────────────────────────────

Future<void> _initCore() async {
  // ─── Local Storage ────────────────────────────────
  sl.registerLazySingleton<LocalStorageService>(() => LocalStorageService());
  final localStorage = sl<LocalStorageService>();
  await localStorage.init(
    boxNames: [
      HiveBoxes.app,
      HiveBoxes.data,
      HiveBoxes.home,
      HiveBoxes.wishlist,
    ],
    regesterAdapters: _registerAdapters,
  );

  // ─── Secure Storage ───────────────────────────────
  sl.registerLazySingleton<SecureStorageService>(() => SecureStorageService());

  // ─── Router ───────────────────────────────────────
  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  // ─── App BLoCs ────────────────────────────────────
  sl.registerFactory<ThemeBloc>(() => ThemeBloc(localStorage: localStorage));
  sl.registerFactory<LanguageBloc>(
    () => LanguageBloc(localStorage: localStorage),
  );

  // ─── Network ──────────────────────────────────────
  DioClient().init();
  sl.registerLazySingleton<ApiService>(() => ApiService(DioClient().dio));

  // ─── Error Handler ────────────────────────────────
  ApiErrorHandler.instance.init(
    onUnauthorized: () {
      // TODO: Navigate to Login
    },
  );
}

Future<void> _registerAdapters() async {
  Hive.registerAdapter<AppThemeModeEnum>(AppThemeModeEnumAdapter());
  Hive.registerAdapter<UserModel>(UserModelAdapter());
  Hive.registerAdapter<AddressModel>(AddressModelAdapter());
  Hive.registerAdapter<BannerModel>(BannerModelAdapter());
  Hive.registerAdapter<CategoryModel>(CategoryModelAdapter());
  Hive.registerAdapter<ProductModel>(ProductModelAdapter());
  Hive.registerAdapter<BrandModel>(BrandModelAdapter());
  Hive.registerAdapter<WishlistItemModel>(WishlistItemModelAdapter());
}
// ─── Auth ─────────────────────────────────────────────────────────────────────

void _initAuth() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(
      secureStorage: sl<SecureStorageService>(),
      localStorage: sl<LocalStorageService>(),
    ),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(
      remoteDataSource: sl<AuthRemoteDataSource>(),
      localDataSource: sl<AuthLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<LoginUseCase>(
    () => LoginUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<RegisterUseCase>(
    () => RegisterUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<VerifyEmailOtpUseCase>(
    () => VerifyEmailOtpUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<VerifyResetOtpUseCase>(
    () => VerifyResetOtpUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<ResendOtpUseCase>(
    () => ResendOtpUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(repository: sl<AuthRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<LoginBloc>(
    () => LoginBloc(loginUseCase: sl<LoginUseCase>()),
  );
  sl.registerFactory<RegisterBloc>(
    () => RegisterBloc(registerUseCase: sl<RegisterUseCase>()),
  );
  sl.registerFactory<ForgotPasswordBloc>(
    () => ForgotPasswordBloc(
      forgotPasswordUseCase: sl<ForgotPasswordUseCase>(),
      verifyOtpUseCase: sl<VerifyResetOtpUseCase>(),
      resendOtpUseCase: sl<ResendOtpUseCase>(),
      resetPasswordUseCase: sl<ResetPasswordUseCase>(),
    ),
  );
}

void _initAddress() {
  sl.registerLazySingleton<NominatimService>(() => NominatimService());
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<AddressRemoteDataSource>(
    () => AddressRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<AddressLocalDataSource>(
    () => AddressLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<AddressRepo>(
    () => AddressRepoImpl(
      remoteDataSource: sl<AddressRemoteDataSource>(),
      localDataSource: sl<AddressLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<GetAddressesUseCase>(
    () => GetAddressesUseCase(repo: sl<AddressRepo>()),
  );
  sl.registerFactory<AddAddressUseCase>(
    () => AddAddressUseCase(repo: sl<AddressRepo>()),
  );
  sl.registerFactory<UpdateAddressUseCase>(
    () => UpdateAddressUseCase(repo: sl<AddressRepo>()),
  );
  sl.registerFactory<DeleteAddressUseCase>(
    () => DeleteAddressUseCase(repo: sl<AddressRepo>()),
  );
  sl.registerFactory<SetDefaultAddressUseCase>(
    () => SetDefaultAddressUseCase(repo: sl<AddressRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<LocationPickerBloc>(
    () => LocationPickerBloc(nominatimService: sl<NominatimService>()),
  );

  sl.registerFactory<AddressBloc>(
    () => AddressBloc(
      getAddressesUseCase: sl<GetAddressesUseCase>(),
      addAddressUseCase: sl<AddAddressUseCase>(),
      updateAddressUseCase: sl<UpdateAddressUseCase>(),
      deleteAddressUseCase: sl<DeleteAddressUseCase>(),
      setDefaultAddressUseCase: sl<SetDefaultAddressUseCase>(),
    ),
  );
}

void _initHome() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      remoteDataSource: sl<HomeRemoteDataSource>(),
      localDataSource: sl<HomeLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<GetBannersUseCase>(
    () => GetBannersUseCase(repo: sl<HomeRepo>()),
  );
  sl.registerFactory<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(repo: sl<HomeRepo>()),
  );
  sl.registerFactory<GetRecommendedProductsUseCase>(
    () => GetRecommendedProductsUseCase(repo: sl<HomeRepo>()),
  );
  sl.registerFactory<GetFeaturedProductsUseCase>(
    () => GetFeaturedProductsUseCase(repo: sl<HomeRepo>()),
  );
  sl.registerFactory<GetBrandsUseCase>(
    () => GetBrandsUseCase(repo: sl<HomeRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<HomeBloc>(
    () => HomeBloc(
      getBannersUseCase: sl<GetBannersUseCase>(),
      getCategoriesUseCase: sl<GetCategoriesUseCase>(),
      getRecommendedProductsUseCase: sl<GetRecommendedProductsUseCase>(),
      getFeaturedProductsUseCase: sl<GetFeaturedProductsUseCase>(),
      getBrandsUseCase: sl<GetBrandsUseCase>(),
    ),
  );
}

void _initWishlist() {
  sl.registerLazySingleton<WishlistRemoteDataSource>(
    () => WishlistRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<WishlistLocalDataSource>(
    () => WishlistLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );
  sl.registerLazySingleton<WishlistRepo>(
    () => WishlistRepoImpl(
      remoteDataSource: sl<WishlistRemoteDataSource>(),
      localDataSource: sl<WishlistLocalDataSource>(),
    ),
  );
  sl.registerFactory<GetWishlistUseCase>(
    () => GetWishlistUseCase(repo: sl<WishlistRepo>()),
  );
  sl.registerFactory<AddToWishlistUseCase>(
    () => AddToWishlistUseCase(repo: sl<WishlistRepo>()),
  );
  sl.registerFactory<RemoveFromWishlistUseCase>(
    () => RemoveFromWishlistUseCase(repo: sl<WishlistRepo>()),
  );
  sl.registerFactory<IsInWishlistUseCase>(
    () => IsInWishlistUseCase(repo: sl<WishlistRepo>()),
  );
  sl.registerFactory<WishlistBloc>(
    () => WishlistBloc(
      getWishlistUseCase: sl<GetWishlistUseCase>(),
      addToWishlistUseCase: sl<AddToWishlistUseCase>(),
      removeFromWishlistUseCase: sl<RemoveFromWishlistUseCase>(),
    ),
  );
}
