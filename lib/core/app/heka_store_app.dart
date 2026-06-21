import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/app_bloc_or_chetrator.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';
import 'package:heka_store/core/resources/app_theme.dart';

final rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class HekaStoreApp extends StatelessWidget {
  const HekaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocOrchestrator(
      builder: (themeState, langState) => ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (_, __) {
          return MultiBlocListener(
            listeners: [
              // ── Cart Listener ────────────────────────────────────────
              BlocListener<CartBloc, CartState>(
                listenWhen: (prev, curr) =>
                    prev.isAddingToCart &&
                    !curr.isAddingToCart &&
                    curr.addedToCartSuccess != null,
                listener: (_, state) {
                  if (state.addedToCartSuccess == true) {
                    _showSnackBar(
                      message: 'Added to cart successfully!',
                      icon: CupertinoIcons.cart_fill,
                      isSuccess: true,
                    );
                  } else {
                    _showSnackBar(
                      message:
                          state.error?.serverMessage ?? 'Failed to add to cart',
                      isSuccess: false,
                    );
                  }
                },
              ),

              // ── Wishlist Listener ────────────────────────────────────
              BlocListener<WishlistBloc, WishlistState>(
                listenWhen: (prev, curr) =>
                    prev.lastToggledProductId != curr.lastToggledProductId &&
                    curr.lastToggledProductId != null,
                listener: (_, state) {
                  if (state.error != null) {
                    _showSnackBar(
                      message:
                          state.error?.serverMessage ?? 'Something went wrong',
                      isSuccess: false,
                    );
                  } else {
                    final isAdded = state.isInWishlist(
                      state.lastToggledProductId!,
                    );
                    _showSnackBar(
                      message: isAdded
                          ? 'Added to wishlist!'
                          : 'Removed from wishlist',
                      icon: isAdded
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      iconColor: isAdded ? Colors.red : Colors.white,
                      isSuccess: true,
                    );
                  }
                },
              ),
            ],
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: MaterialApp.router(
                scaffoldMessengerKey: rootScaffoldMessengerKey,
                routerConfig: sl<AppRouter>().router,
                locale: Locale(langState.languageCode),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: themeState.themeMode,
              ),
            ),
          );
        },
      ),
    );
  }
}

// ── Global SnackBar helper ───────────────────────────────────────────────────
void _showSnackBar({
  required String message,
  required bool isSuccess,
  IconData icon = Icons.check_circle_rounded,
  Color? iconColor,
}) {
  rootScaffoldMessengerKey.currentState
    ?..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              isSuccess ? icon : Icons.error_outline_rounded,
              color: iconColor ?? Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: Duration(seconds: isSuccess ? 2 : 3),
      ),
    );
}
