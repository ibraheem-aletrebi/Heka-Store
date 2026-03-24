import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/layout/main_layout_view_body.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainLayoutBloc()),
        BlocProvider<WishlistBloc>(
          create: (_) => sl<WishlistBloc>()..add(const WishlistEvent.loaded()),
        ),
      ],
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: BlocListener<WishlistBloc, WishlistState>(
            // ─── Listen لما يتضاف أو يتشال ────────────────
            listenWhen: (previous, current) =>
                previous.lastToggledProductId != current.lastToggledProductId &&
                current.lastToggledProductId != null,
            listener: (context, state) {
              final productId = state.lastToggledProductId!;
              final isAdded = state.isInWishlist(productId);

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Row(
                      children: [
                        Icon(
                          isAdded
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: AppSizes.w8),
                        Text(
                          isAdded
                              ? S.of(context).addedToWishlist
                              : S.of(context).removedFromWishlist,
                        ),
                      ],
                    ),
                    backgroundColor: isAdded
                        ? context.myColors.success
                        : context.myColors.error,
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    margin: EdgeInsets.only(
                      bottom: AppSizes.h80,
                      left: AppSizes.w16,
                      right: AppSizes.w16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.r12),
                    ),
                  ),
                );
            },
            child: const MainLayoutViewBody(),
          ),
        ),
      ),
    );
  }
}
