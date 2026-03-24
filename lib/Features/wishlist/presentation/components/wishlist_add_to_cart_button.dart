import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';


class WishlistAddToCartButton extends StatelessWidget {
  const WishlistAddToCartButton({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w12,
          vertical: AppSizes.h8,
        ),
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
        child: Row(
          mainAxisAlignment: .center,
          spacing: 5,
          children: [
            Text(
              S.of(context).addToCart,
              style: TextTheme.of(
                context,
              ).titleSmall?.copyWith(color: Colors.white),
            ),
            Icon(Icons.shopping_cart, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
