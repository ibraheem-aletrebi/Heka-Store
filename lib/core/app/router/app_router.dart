
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:heka_store/Features/splash/presentation/views/splash_view.dart';
import 'package:heka_store/core/app/router/app_routes.dart';

class AppRouter {


  late final GoRouter router = GoRouter(

    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, _) => const SplashView(),
      ),

      GoRoute(
        path: AppRoutes.onboarding,
        builder: (_, _) => const OnboardingView(),
      ),

     
   
    ],
  );
}