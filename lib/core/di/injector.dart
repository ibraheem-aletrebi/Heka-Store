import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/account/data/data_source/account_remote_data_source.dart';
import 'package:heka_store/Features/account/data/repos/account_repo_imp.dart';
import 'package:heka_store/Features/account/domain/repos/account_repo.dart';
import 'package:heka_store/Features/account/domain/use_cases/delete_profile_picture_use_case.dart';
import 'package:heka_store/Features/account/domain/use_cases/edit_profile_use_case.dart';
import 'package:heka_store/Features/account/domain/use_cases/upload_profile_picture_use_case.dart';
import 'package:heka_store/Features/account/presentation/blocs/edit_profile/edit_profile_bloc.dart';
import 'package:heka_store/Features/account/presentation/blocs/profile_image/profile_image_bloc.dart';
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
import 'package:heka_store/Features/auth/domain/use_cases/delete_account_and_logout/delete_account_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/google_login_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/forgot_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/reset_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/verify_reset_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/logout_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/register_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/Features/auth/presentation/blocs/delete_account/delete_account_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/logout/logout_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/brand_profile/data/data_source/brand_local_data_source.dart';
import 'package:heka_store/Features/brand_profile/data/data_source/brand_remote_data_source.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/Features/brand_profile/data/repos/brand_repo.dart';
import 'package:heka_store/Features/brand_profile/data/repos/brand_repo_imp.dart';
import 'package:heka_store/Features/brand_profile/data/use_cases/get_brand_products_use_case.dart';
import 'package:heka_store/Features/brand_profile/data/use_cases/get_brand_profile_use_case.dart';
import 'package:heka_store/Features/brand_profile/presentation/blocs/brand_profile/brand_profile_bloc.dart';
import 'package:heka_store/Features/cart/data/data_source/cart_local_data_source.dart';
import 'package:heka_store/Features/cart/data/data_source/cart_remote_data_source.dart';
import 'package:heka_store/Features/cart/data/repos/cart_repository_impl.dart';
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/Features/cart/domain/use_cases/add_cart_item_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/clear_cart_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_cart_count_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_cart_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_products_you_may_like.dart';
import 'package:heka_store/Features/cart/domain/use_cases/remove_cart_item_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/update_cart_item_use_case.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/products_you_may_like/may_like_bloc.dart';
import 'package:heka_store/Features/home/data/data_source/home_local_data_srouce.dart';
import 'package:heka_store/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data_hive.dart';
import 'package:heka_store/Features/home/data/models/category/category_hive.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/data/repos/home_repo_imp.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_banners_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_featured_products_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_user_profile_use_case.dart';
import 'package:heka_store/Features/home/presentation/blocs/brands/brands_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/home/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/recommended_for_you/recommended_for_you_bloc.dart';
import 'package:heka_store/Features/notifications/data/datasources/notification_remote_datasource.dart';
import 'package:heka_store/Features/notifications/data/repositories/notification_repository_impl.dart';
import 'package:heka_store/Features/notifications/domain/repositories/notification_repository.dart';
import 'package:heka_store/Features/notifications/domain/usecases/notification_usecases.dart';
import 'package:heka_store/Features/notifications/presentation/bloc/notification_bloc.dart';
import 'package:heka_store/Features/order/data/data_source/my_orders_local_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/my_orders_remote_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/order_details_local_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/order_details_remote_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/order_remote_data_source.dart';
import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/data/repo/my_orders_repository.dart';
import 'package:heka_store/Features/order/data/repo/order_details_repo.dart';
import 'package:heka_store/Features/order/data/repo/order_repository.dart';
import 'package:heka_store/Features/order/domain/use_cases/get_order_details_use_case.dart';
import 'package:heka_store/Features/order/domain/use_cases/initiate_payment_use_case.dart';
import 'package:heka_store/Features/order/domain/use_cases/order_use_cases.dart';
import 'package:heka_store/Features/order/presentation/blocs/add_review/add_review_cubit.dart';
import 'package:heka_store/Features/order/presentation/blocs/my_orders/my_orders_bloc.dart';
import 'package:heka_store/Features/order/presentation/blocs/order/order_bloc.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_details/order_details_bloc.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_tracking/order_tracking_cubit.dart';
import 'package:heka_store/Features/product_details/data/data_source/product_local_data_source.dart';
import 'package:heka_store/Features/product_details/data/data_source/product_remote_data_source.dart';
// ─── Product Details imports ──────────────────────────────────────────────────

import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_image_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';
import 'package:heka_store/Features/product_details/data/repos/product_repo_imp.dart';
import 'package:heka_store/Features/product_details/domain/repos/product_repo.dart';

import 'package:heka_store/Features/product_details/domain/use_cases/get_product_details_use_case.dart';
import 'package:heka_store/Features/product_details/domain/use_cases/get_similar_product_use_case.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/Features/search/data/data_source/search_local_data_source.dart';
import 'package:heka_store/Features/search/data/data_source/search_remote_data_source.dart';
import 'package:heka_store/Features/search/data/repo/search_repository_impl.dart';
import 'package:heka_store/Features/search/domain/repos/search_repository.dart';
import 'package:heka_store/Features/search/domain/use_cases/search_products_usecase.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_cubit.dart';
// ─────────────────────────────────────────────────────────────────────────────
import 'package:heka_store/Features/wishlist/data/data_source/previous_viewed_products_data_source.dart';
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_local_data_source.dart';
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_remote_data_source.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/data/repos/wishlist_repo_impl.dart';
import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/add_to_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/get_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/is_in_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/domain/use_cases/remove_from_wishlist_use_case.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/services/nominatim/nominatim_service.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import 'package:heka_store/core/services/remote/dio_client.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';
import 'package:heka_store/core/services/remote/interceptors/language_interceptor.dart';
import 'package:heka_store/main.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();

  _initAuth();
  _initAddress();
  _initHome();
  _initWishlist();
  _initCart();
  _initProductDetails();
  _initAccount();
  _initOrder();
  _initBrandProfile();
  _initNotifications();
  _initSearch();
}

// ─── Core ─────────────────────────────────────────────────────────────────────

Future<void> _initCore() async {
  // ─── Local Storage ────────────────────────────────
  sl.registerLazySingleton<LocalStorageService>(() => LocalStorageService());
  final localStorage = sl<LocalStorageService>();
  await localStorage.init(
    boxNames: [
      HiveBoxes.data,
      HiveBoxes.app,
      HiveBoxes.home,
      HiveBoxes.wishlist,
      HiveBoxes.previousViewedProducts,
      HiveBoxes.cart,
      HiveBoxes.brands,
      HiveBoxes.orders,
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
    () => LanguageBloc(
      localStorage: localStorage,
      languageInterceptor: sl<LanguageInterceptor>(), // ← add
    ),
  );

  // ─── Network ──────────────────────────────────────
  DioClient().init();
  sl.registerLazySingleton<LanguageInterceptor>(
    () => DioClient().languageInterceptor,
  );
  sl.registerLazySingleton<ApiService>(() => ApiService(DioClient().dio));

  // ─── Error Handler ────────────────────────────────
  ApiErrorHandler.instance.init(
    onUnauthorized: () {
      GoRouter.of(navigatorKey.currentContext!).go(AppRoutes.login);
    },
  );
}

Future<void> _registerAdapters() async {
  Hive.registerAdapter<AppThemeModeEnum>(AppThemeModeEnumAdapter());
  Hive.registerAdapter<UserModel>(UserModelAdapter());
  Hive.registerAdapter<UserProfile>(UserProfileAdapter());
  Hive.registerAdapter<AddressModel>(AddressModelAdapter());
  Hive.registerAdapter<BannerModel>(BannerModelAdapter());
  Hive.registerAdapter<ProductModel>(ProductModelAdapter());
  Hive.registerAdapter<BrandModel>(BrandModelAdapter());

  // ─── Wishlist Hive Adapters ───────────────────────
  Hive.registerAdapter<WishlistItemModel>(WishlistItemModelAdapter());

  // ─── Category Hive Adapters ───────────────────────
  Hive.registerAdapter<CategoryHive>(CategoryHiveAdapter());
  Hive.registerAdapter<CategoriesDataHive>(CategoriesDataHiveAdapter());

  // ─── Product Details Hive Adapters ───────────────
  Hive.registerAdapter<ProductDetailsModel>(ProductDetailsModelAdapter());
  Hive.registerAdapter<ProductImageModel>(ProductImageModelAdapter());
  Hive.registerAdapter<ProductVariantModel>(ProductVariantModelAdapter());
  Hive.registerAdapter<ProductVariantOptionModel>(
    ProductVariantOptionModelAdapter(),
  );

  Hive.registerAdapter<BrandProfileModel>(BrandProfileModelAdapter());
  Hive.registerAdapter<BrandProductModel>(BrandProductModelAdapter());
  Hive.registerAdapter<MyOrderModel>(MyOrderModelAdapter());

  Hive.registerAdapter<OrderDetailsModel>(OrderDetailsModelAdapter());
  Hive.registerAdapter<OrderItemModel>(OrderItemModelAdapter());
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

  sl.registerFactory<GoogleLoginUseCase>(
    () => GoogleLoginUseCase(sl<AuthRepo>()),
  );

  sl.registerFactory<DeleteAccountUseCase>(
    () => DeleteAccountUseCase(sl<AuthRepo>()),
  );

  sl.registerFactory<LogoutUseCase>(() => LogoutUseCase(sl<AuthRepo>()));

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<LoginBloc>(
    () => LoginBloc(
      loginUseCase: sl<LoginUseCase>(),
      googleLoginUseCase: sl<GoogleLoginUseCase>(),
    ),
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
  sl.registerFactory<DeleteAccountBloc>(
    () => DeleteAccountBloc(deleteAccountUseCase: sl<DeleteAccountUseCase>()),
  );
  sl.registerFactory<LogoutBloc>(
    () => LogoutBloc(logoutUseCase: sl<LogoutUseCase>()),
  );
}

// ─── Address ──────────────────────────────────────────────────────────────────

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

// ─── Home ─────────────────────────────────────────────────────────────────────

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

  sl.registerFactory<GetUserProfileUseCase>(
    () => GetUserProfileUseCase(repo: sl<HomeRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────

  sl.registerFactory<UserProfileBloc>(
    () => UserProfileBloc(getUserProfileUseCase: sl<GetUserProfileUseCase>()),
  );
  sl.registerFactory<RecommendedForYouBloc>(
    () => RecommendedForYouBloc(
      getRecommendedProductsUseCase: sl<GetRecommendedProductsUseCase>(),
    ),
  );
  sl.registerFactory<CategoriesBloc>(
    () => CategoriesBloc(getCategoriesUseCase: sl<GetCategoriesUseCase>()),
  );
  sl.registerFactory<HomeBloc>(
    () => HomeBloc(
      getBannersUseCase: sl<GetBannersUseCase>(),
      getRecommendedProductsUseCase: sl<GetRecommendedProductsUseCase>(),
      getFeaturedProductsUseCase: sl<GetFeaturedProductsUseCase>(),
      getBrandsUseCase: sl<GetBrandsUseCase>(),
    ),
  );

  sl.registerFactory<BrandsBloc>(
    () => BrandsBloc(getBrandsUseCase: sl<GetBrandsUseCase>()),
  );
}

// ─── Wishlist ─────────────────────────────────────────────────────────────────

void _initWishlist() {
  sl.registerLazySingleton<PreviousViewedProductsDataSource>(
    () => PreviousViewedProductsDataSourceImpl(
      localStorage: sl<LocalStorageService>(),
    ),
  );
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
  sl.registerFactory<PreviousViewedProductsBloc>(
    () => PreviousViewedProductsBloc(
      dataSource: sl<PreviousViewedProductsDataSource>(),
    ),
  );
  sl.registerFactory<WishlistBloc>(
    () => WishlistBloc(
      getWishlistUseCase: sl(),
      addToWishlistUseCase: sl(),
      removeFromWishlistUseCase: sl(),
    ),
  );
}

// ─── Cart ─────────────────────────────────────────────────────────────────────

void _initCart() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<CartRemoteDataSource>(
    () => CartRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<CartLocalDataSource>(
    () => CartLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(
      remote: sl<CartRemoteDataSource>(),
      local: sl<CartLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<GetCartUseCase>(
    () => GetCartUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<AddCartItemUseCase>(
    () => AddCartItemUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<UpdateCartItemUseCase>(
    () => UpdateCartItemUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<RemoveCartItemUseCase>(
    () => RemoveCartItemUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<GetCartCountUseCase>(
    () => GetCartCountUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<ClearCartUseCase>(
    () => ClearCartUseCase(sl<CartRepository>()),
  );
  sl.registerFactory<GetProductsYouMayLike>(
    () => GetProductsYouMayLike(sl<CartRepository>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<MayLikeBloc>(
    () => MayLikeBloc(getProductsYouMayLike: sl<GetProductsYouMayLike>()),
  );
  sl.registerLazySingleton<CartBloc>(
    () => CartBloc(
      getCart: sl<GetCartUseCase>(),
      addItem: sl<AddCartItemUseCase>(),
      updateItem: sl<UpdateCartItemUseCase>(),
      removeItem: sl<RemoveCartItemUseCase>(),
      getCount: sl<GetCartCountUseCase>(),
      clearCart: sl<ClearCartUseCase>(),
    ),
  );
}

// ─── Product Details ──────────────────────────────────────────────────────────

void _initProductDetails() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<ProductRemoteDataSource>(
    // ← abstract مش Impl
    () => ProductRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<ProductLocalDataSource>(
    () => ProductLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<ProductRepo>(
    () => ProductRepoImpl(
      remoteDataSource: sl<ProductRemoteDataSource>(),
      localDataSource: sl<ProductLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<GetProductDetailsUseCase>(
    () => GetProductDetailsUseCase(repo: sl<ProductRepo>()),
  );
  sl.registerFactory<GetSimilarProductsUseCase>(
    () => GetSimilarProductsUseCase(repo: sl<ProductRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<ProductDetailsBloc>(
    () => ProductDetailsBloc(
      getProductDetailsUseCase: sl<GetProductDetailsUseCase>(),
    ),
  );
  sl.registerFactory<SimilarProductsBloc>(
    () => SimilarProductsBloc(
      getSimilarProductsUseCase: sl<GetSimilarProductsUseCase>(),
    ),
  );
}

void _initAccount() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<AccountRemoteDataSource>(
    () => AccountRemoteDataSourceImp(apiService: sl<ApiService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<AccountRepo>(
    () => AccountRepoImp(remoteDataSource: sl<AccountRemoteDataSource>()),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<EditProfileUseCase>(
    () => EditProfileUseCase(accountRepo: sl<AccountRepo>()),
  );
  sl.registerFactory<DeleteProfilePictureUseCase>(
    () => DeleteProfilePictureUseCase(accountRepo: sl<AccountRepo>()),
  );
  sl.registerFactory<UploadProfilePictureUseCase>(
    () => UploadProfilePictureUseCase(accountRepo: sl<AccountRepo>()),
  );
  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<EditProfileBloc>(
    () => EditProfileBloc(editProfileUseCase: sl<EditProfileUseCase>()),
  );
  sl.registerFactory<ProfileImageBloc>(
    () => ProfileImageBloc(
      uploadProfilePictureUseCase: sl<UploadProfilePictureUseCase>(),
      deleteProfilePictureUseCase: sl<DeleteProfilePictureUseCase>(),
    ),
  );
}

void _initOrder() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<OrderRemoteDataSource>(
    // ← abstract مش Impl
    () => OrderRemoteDataSourceImpl(sl<ApiService>()),
  );
  sl.registerLazySingleton<MyOrdersRemoteDataSource>(
    () => MyOrdersRemoteDataSourceImpl(sl<ApiService>()),
  );

  sl.registerLazySingleton<OrderDetailsRemoteDataSource>(
    () => OrderDetailsRemoteDataSourceImpl(sl<ApiService>()),
  );
  sl.registerLazySingleton<OrderDetailsLocalDataSource>(
    () => OrderDetailsLocalDataSourceImpl(
      localStorage: sl<LocalStorageService>(),
    ),
  );
  sl.registerLazySingleton<OrderDetailsRepo>(
    () => OrderDetailsRepoImpl(
      remote: sl<OrderDetailsRemoteDataSource>(),
      local: sl<OrderDetailsLocalDataSource>(),
    ),
  );
  sl.registerFactory<GetOrderDetailsUseCase>(
    () => GetOrderDetailsUseCase(sl<OrderDetailsRepo>()),
  );
  sl.registerFactory<OrderDetailsBloc>(
    () => OrderDetailsBloc(getOrderDetails: sl<GetOrderDetailsUseCase>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<OrderRepository>(
    () => OrderRepositoryImpl(sl<OrderRemoteDataSource>()),
  );

  sl.registerLazySingleton<MyOrdersLocalDataSource>(
    () => MyOrdersLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // update MyOrdersRepository registration:
  sl.registerLazySingleton<MyOrdersRepository>(
    () => MyOrdersRepositoryImpl(
      remote: sl<MyOrdersRemoteDataSource>(),
      local: sl<MyOrdersLocalDataSource>(),
    ),
  );
  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<CreateOrderUseCase>(
    () => CreateOrderUseCase(sl<OrderRepository>()),
  );

  sl.registerFactory<InitiatePaymentUseCase>(
    () => InitiatePaymentUseCase(sl<OrderRepository>()),
  );
  sl.registerFactory<GetMyOrdersUseCase>(
    () => GetMyOrdersUseCase(sl<MyOrdersRepository>()),
  );
  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<OrderBloc>(
    () => OrderBloc(
      createOrderUseCase: sl<CreateOrderUseCase>(),
      initiatePaymentUseCase: sl<InitiatePaymentUseCase>(),
    ),
  );

  sl.registerFactory<MyOrdersBloc>(
    () => MyOrdersBloc(getMyOrdersUseCase: sl<GetMyOrdersUseCase>()),
  );
  sl.registerFactory<OrderTrackingCubit>(
    () => OrderTrackingCubit(repo: sl<OrderRepository>()),
  );

  sl.registerFactory<AddReviewCubit>(
    () => AddReviewCubit(sl<OrderRepository>()),
  );
}

// ─── Brand Profile ────────────────────────────────────────────────────────────

void _initBrandProfile() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<BrandRemoteDataSource>(
    () => BrandRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<BrandLocalDataSource>(
    () => BrandLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<BrandRepo>(
    () => BrandRepoImpl(
      remoteDataSource: sl<BrandRemoteDataSource>(),
      localDataSource: sl<BrandLocalDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<GetBrandProfileUseCase>(
    () => GetBrandProfileUseCase(repo: sl<BrandRepo>()),
  );
  sl.registerFactory<GetBrandProductsUseCase>(
    () => GetBrandProductsUseCase(repo: sl<BrandRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<BrandProfileBloc>(
    () => BrandProfileBloc(
      getBrandProfile: sl<GetBrandProfileUseCase>(),
      getBrandProducts: sl<GetBrandProductsUseCase>(),
    ),
  );
}

void _initNotifications() async {
  // ─── Data Source ───────────────────────────────

  sl.registerLazySingleton<NotificationRemoteDataSource>(
    () => NotificationRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  // ─── Repository ────────────────────────────────
  sl.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(
      remoteDataSource: sl<NotificationRemoteDataSource>(),
    ),
  );

  // ─── Use Cases ─────────────────────────────────
  sl.registerFactory<GetNotificationsUseCase>(
    () => GetNotificationsUseCase(sl<NotificationRepository>()),
  );

  sl.registerFactory<GetUnreadCountUseCase>(
    () => GetUnreadCountUseCase(sl<NotificationRepository>()),
  );

  sl.registerFactory<MarkAsReadUseCase>(
    () => MarkAsReadUseCase(sl<NotificationRepository>()),
  );

  sl.registerFactory<MarkAllAsReadUseCase>(
    () => MarkAllAsReadUseCase(sl<NotificationRepository>()),
  );

  sl.registerFactory<DeleteNotificationUseCase>(
    () => DeleteNotificationUseCase(sl<NotificationRepository>()),
  );

  sl.registerFactory<BulkDeleteNotificationsUseCase>(
    () => BulkDeleteNotificationsUseCase(sl<NotificationRepository>()),
  );

  // ─── BLoC ─────────────────────────────────────
  sl.registerFactory<NotificationBloc>(
    () => NotificationBloc(
      getNotificationsUseCase: sl<GetNotificationsUseCase>(),
      getUnreadCountUseCase: sl<GetUnreadCountUseCase>(),
      markAsReadUseCase: sl<MarkAsReadUseCase>(),
      markAllAsReadUseCase: sl<MarkAllAsReadUseCase>(),
      deleteNotificationUseCase: sl<DeleteNotificationUseCase>(),
      bulkDeleteUseCase: sl<BulkDeleteNotificationsUseCase>(),
    ),
  );
}

void _initSearch() async {
  sl.registerLazySingleton<SearchRemoteDataSource>(
    () => SearchRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<SearchLocalDataSource>(
    () => SearchLocalDataSourceImpl(localStorage: sl<LocalStorageService>()),
  );
  // ─── Repository ────────────────────────────────
  sl.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(
      remote: sl<SearchRemoteDataSource>(),
      local: sl<SearchLocalDataSource>(),
    ),
  );

  // ─── Use Cases ─────────────────────────────────
  sl.registerFactory<SearchProductsUseCase>(
    () => SearchProductsUseCase(sl<SearchRepository>()),
  );

  // ─── BLoC ─────────────────────────────────────
  sl.registerFactory<SearchCubit>(
    () => SearchCubit(
      searchProducts: sl<SearchProductsUseCase>(),
      local: sl<SearchLocalDataSource>(),
    ),
  );
}
