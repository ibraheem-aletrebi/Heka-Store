import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/presentation/views/location_picker/location_picker_view.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_local_data_source.dart';
import 'package:heka_store/Features/auth/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:heka_store/Features/auth/presentation/views/login/login_view.dart';
import 'package:heka_store/Features/auth/presentation/views/register/register_view.dart';
import 'package:heka_store/Features/auth/presentation/views/verify_email/verify_email_view.dart';
import 'package:heka_store/Features/home/presentation/views/layout/main_layout_view.dart';
import 'package:heka_store/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:heka_store/Features/splash/presentation/views/splash_view.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/services/local/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
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
    ],
  );
}

Future<String> getInitialRoute() async {
  final localDataSource = sl<AuthLocalDataSource>();

  final isLoggedIn = await localDataSource.isLoggedIn();
  if (isLoggedIn) return AppRoutes.mainLayout;

  final pendingEmail = await localDataSource.getPendingVerifyEmail();
  if (pendingEmail != null) return AppRoutes.verifyEmail;

  final hasSeenOnboarding =
      LocalStorageService().getValue<bool>(
        HiveBoxes.app,
        LocalStorageKeys.hasSeenOnboarding,
      ) ??
      false;
  if (hasSeenOnboarding) return AppRoutes.login;

  return AppRoutes.onboarding;
}
