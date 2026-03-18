import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:heka_store/Features/auth/presentation/views/login/login_view.dart';
import 'package:heka_store/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:heka_store/Features/splash/presentation/views/splash_view.dart';
import 'package:heka_store/core/app/router/app_routes.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: AppRoutes.splash, builder: (_, _) => const SplashView()),

      GoRoute(
        path: AppRoutes.onboarding,
        builder: (_, _) => const OnboardingView(),
      ),

      GoRoute(path: AppRoutes.login, builder: (_, _) => const LoginView()),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (_, _) => const ForgotPasswordView(),
      ),
    ],
  );
}
