import 'package:flutter/material.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductDetailsModel product;
  final String langCode;
  final ProductDetailsState state;

  const ProductInfoSection({
    super.key,
    required this.product,
    required this.langCode,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

    final displayPrice = product.finalPrice + state.totalVariantAdjustment;
    final hasVariantAdjustment = state.totalVariantAdjustment != 0;

    return Padding(
      padding: EdgeInsets.all(AppSizes.w20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Category + Stock badge ──────────────────
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w10,
                  vertical: AppSizes.h4,
                ),
                decoration: BoxDecoration(
                  color: colors.primarySoft,
                  borderRadius: BorderRadius.circular(AppSizes.r20),
                ),
                child: Text(
                  langCode == 'ar'
                      ? product.categoryNameAr
                      : product.categoryNameEn,
                  style: AppTextStyles.regular12.copyWith(
                    color: colors.primary,
                  ),
                ),
              ),
              const Spacer(),

              // ── Stock Badge (3 states) ────────────────
              Builder(
                builder: (_) {
                  final qty = product.stockQuantity;
                  final inStock = product.inStock;
                  final isLow = inStock && qty <= 5;

                  final label = !inStock
                      ? s.out_of_stock_label
                      : isLow
                      ? s.only_x_left_label(qty)
                      : s.in_stock;

                  final bg = !inStock
                      ? colors.error.withValues(alpha: 0.12)
                      : isLow
                      ? const Color(0xFFFFF3CD)
                      : colors.success.withValues(alpha: 0.12);

                  final fg = !inStock
                      ? colors.error
                      : isLow
                      ? const Color(0xFFB45309)
                      : colors.success;

                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.w10,
                      vertical: AppSizes.h4,
                    ),
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(AppSizes.r20),
                    ),
                    child: Text(
                      label,
                      style: AppTextStyles.regular12.copyWith(color: fg),
                    ),
                  );
                },
              ),
            ],
          ),

          SizedBox(height: AppSizes.h12),

          // ─── Product Name ────────────────────────────
          Text(
            product.localizedName(langCode),
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),

          SizedBox(height: AppSizes.h8),

          // ─── Rating + Reviews ────────────────────────
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: const Color(0xFFFACC15),
                size: AppSizes.sp18,
              ),
              SizedBox(width: AppSizes.w4),
              Text(
                product.averageRating.toStringAsFixed(1),
                style: AppTextStyles.semiBold14.copyWith(
                  color: colors.textPrimary,
                ),
              ),
              SizedBox(width: AppSizes.w4),
              Text(
                s.reviews_count(product.totalReviews),
                style: AppTextStyles.regular13.copyWith(color: colors.textHint),
              ),
              const Spacer(),
              Text(
                s.views_count(product.viewCount),
                style: AppTextStyles.regular12.copyWith(color: colors.textHint),
              ),
            ],
          ),

          SizedBox(height: AppSizes.h16),

          // ─── Price ───────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: AppSizes.w4,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Text(
                  s.price_egp(displayPrice.toStringAsFixed(2)),
                  key: ValueKey(displayPrice),
                  style: textTheme.titleLarge?.copyWith(color: colors.primary),
                ),
              ),
              if (product.hasDiscount) ...[
                Text(
                  s.price_egp(product.price.toStringAsFixed(2)),
                  style: AppTextStyles.regular14.copyWith(
                    color: colors.textHint,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w8,
                    vertical: AppSizes.h2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.error.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Text(
                    '-${product.discountPercentage}%',
                    style: AppTextStyles.semiBold12.copyWith(
                      color: colors.error,
                    ),
                  ),
                ),
              ],
              if (hasVariantAdjustment) ...[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w8,
                    vertical: AppSizes.h2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.success.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Text(
                    s.variant_price_adjustment(
                      state.totalVariantAdjustment.toStringAsFixed(0),
                    ),
                    style: textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ],
          ),

          SizedBox(height: AppSizes.h20),

          // ─── Description ─────────────────────────────
          Text(
            s.description,
            style: AppTextStyles.semiBold14.copyWith(color: colors.textPrimary),
          ),
          SizedBox(height: AppSizes.h8),
          Text(
            product.localizedDescription(langCode),
            style: textTheme.bodyMedium?.copyWith(
              color: colors.textSecondary,
              height: 1.6,
            ),
          ),
          if (product.madeInCity != null) ...[
            // ─── Made in ─────────────────────────────────
            SizedBox(height: AppSizes.h16),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: AppSizes.sp16,
                  color: colors.textHint,
                ),
                SizedBox(width: AppSizes.w4),
                Text(
                  s.made_in(product.madeInCity!),
                  style: AppTextStyles.regular13.copyWith(
                    color: colors.textHint,
                  ),
                ),
                if (product.isEgyptianMade) ...[
                  SizedBox(width: AppSizes.w8),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.w8,
                      vertical: AppSizes.h2,
                    ),
                    decoration: BoxDecoration(
                      color: colors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.r8),
                    ),
                    child: Text(
                      s.egyptian_made,
                      style: AppTextStyles.regular12.copyWith(
                        color: colors.primary,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ],
      ),
    );
  }
}
