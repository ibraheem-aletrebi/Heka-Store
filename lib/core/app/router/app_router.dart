import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/account/presentation/views/edit_profile_view.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/views/address_view.dart';
import 'package:heka_store/Features/address/presentation/views/edit_address_view.dart';
import 'package:heka_store/Features/address/presentation/views/location_picker_view.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_local_data_source.dart';
import 'package:heka_store/Features/auth/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:heka_store/Features/auth/presentation/views/login/login_view.dart';
import 'package:heka_store/Features/auth/presentation/views/register/register_view.dart';
import 'package:heka_store/Features/auth/presentation/views/verify_email/verify_email_view.dart';
import 'package:heka_store/Features/brand_profile/presentation/views/brand_profile_view.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';
import 'package:heka_store/Features/home/presentation/views/categories_view.dart';
import 'package:heka_store/Features/home/presentation/views/main_layout_view.dart';
import 'package:heka_store/Features/home/presentation/views/sub_category_view.dart';
import 'package:heka_store/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:heka_store/Features/order/presentation/blocs/my_orders/my_orders_bloc.dart';
import 'package:heka_store/Features/order/presentation/views/my_orders_screen.dart';
import 'package:heka_store/Features/order/presentation/views/order_tracking_screen.dart';
import 'package:heka_store/Features/product_details/presentation/views/product_details_view.dart';
import 'package:heka_store/Features/splash/presentation/views/splash_view.dart';
import 'package:heka_store/Features/wishlist/presentation/view/previous_viewed_products_view.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/main.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    navigatorKey: navigatorKey,
    routes: [
      // ─── Splash ───────────────────────────────
      GoRoute(path: AppRoutes.splash, builder: (_, _) => const SplashView()),

      // ─── Onboarding ───────────────────────────
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (_, _) => const OnboardingView(),
      ),

      // ─── Auth ─────────────────────────────────
      GoRoute(path: AppRoutes.login, builder: (_, _) => const LoginView()),
      GoRoute(
        path: AppRoutes.register,
        builder: (_, _) => const RegisterView(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (_, _) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.verifyEmail,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final email = extra?['email'] as String? ?? '';
          final autoResend = extra?['autoResend'] as bool? ?? false;
          return VerifyEmailView(email: email, autoResend: autoResend);
        },
      ),

      GoRoute(
        path: AppRoutes.locationPickerOnboarding,
        builder: (_, _) => const LocationPickerView(isOnboarding: true),
      ),
      GoRoute(
        path: AppRoutes.locationPicker,
        builder: (_, _) => const LocationPickerView(isOnboarding: false),
      ),

      GoRoute(path: AppRoutes.mainLayout, builder: (_, _) => MainLayoutView()),

      GoRoute(
        path: AppRoutes.previousViewedProductsView,
        builder: (_, _) => PreviousViewedProductsView(),
      ),

      GoRoute(path: AppRoutes.categories, builder: (_, _) => CategoriesView()),
      GoRoute(
        path: AppRoutes.subCategories,
        builder: (context, state) {
          final extra = state.extra as Category;
          return SubCategoryView(category: extra);
        },
      ),
      GoRoute(path: AppRoutes.addresses, builder: (_, _) => AddressView()),
      GoRoute(
        path: AppRoutes.editProfile,
        builder: (context, state) {
          final extra = state.extra as UserProfile;
          return EditProfileView(userProfile: extra);
        },
      ),
      GoRoute(
        path: AppRoutes.editAddress,
        builder: (context, state) {
          final extra = state.extra as AddressModel;
          return EditAddressView(address: extra);
        },
      ),

      GoRoute(
        path: AppRoutes.productDetails,
        builder: (context, state) {
          final extra = state.extra as int;
          return ProductDetailsView(productId: extra);
        },
      ),

      GoRoute(
        path: AppRoutes.brandProfile,
        builder: (context, state) {
          final extra = state.extra as int;
          return BrandProfileView(brandId: extra);
        },
      ),

      GoRoute(
        path: AppRoutes.myOrders,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<MyOrdersBloc>(),
            child: MyOrdersScreen(),
          );
        },
      ),

      GoRoute(
        path: AppRoutes.trackOrder,
        builder: (context, state) {
          final extra = state.extra as String;
          return OrderTrackingScreen(initialOrderNumber: extra);
        },
      ),
    ],
  );

  void go(String route) => router.go(route);
}

Future<String> getInitialRoute() async {
  final localDataSource = sl<AuthLocalDataSource>();

  final isLoggedIn = await localDataSource.isLoggedIn();
  if (isLoggedIn) return AppRoutes.mainLayout;

  final hasSeenOnboarding =
      LocalStorageService().getValue<bool>(
        HiveBoxes.app,
        LocalStorageKeys.hasSeenOnboarding,
      ) ??
      false;

  return hasSeenOnboarding ? AppRoutes.login : AppRoutes.onboarding;
}
