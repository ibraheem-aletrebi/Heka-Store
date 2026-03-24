import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class GuestWishlistPrompt extends StatelessWidget {
  final int itemCount;

  const GuestWishlistPrompt({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Padding(
      padding: EdgeInsets.all(AppSizes.w24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ─── Icon ─────────────────────────────
          Icon(
            Icons.favorite_rounded,
            size: AppSizes.w80,
            color: colors.primary,
          ),
          SizedBox(height: AppSizes.h20),

          // ─── Title ────────────────────────────
          Text(
            s.guestWishlistTitle,
            style: TextTheme.of(context).displaySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.h8),

          // ─── Subtitle ─────────────────────────
          Text(
            s.guestWishlistSubtitle(itemCount),
            style: AppTextStyles.regular14.copyWith(
              color: colors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.h32),

          // ─── Login Button ─────────────────────
          CustomButton(
            text: s.loginToSave,
            onPressed: () => context.push(AppRoutes.login),
          ),
          SizedBox(height: AppSizes.h12),

          // ─── Register Button ──────────────────
          CustomButton.outlined(
            text: s.createAccount,
            onPressed: () => context.push(AppRoutes.register),
          ),
        ],
      ),
    );
  }
}
