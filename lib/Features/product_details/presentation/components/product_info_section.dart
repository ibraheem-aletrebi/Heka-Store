import 'package:flutter/material.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductDetailsModel product;
  final String langCode;

  const ProductInfoSection({
    super.key,
    required this.product,
    required this.langCode,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

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
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w10,
                  vertical: AppSizes.h4,
                ),
                decoration: BoxDecoration(
                  color: product.inStock
                      ? colors.success.withValues(alpha: 0.12)
                      : colors.error.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(AppSizes.r20),
                ),
                child: Text(
                  product.inStock ? 'In Stock' : 'Out of Stock',
                  style: AppTextStyles.regular12.copyWith(
                    color:
                        product.inStock ? colors.success : colors.error,
                  ),
                ),
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
              Icon(Icons.star_rounded,
                  color: const Color(0xFFFACC15), size: AppSizes.sp18),
              SizedBox(width: AppSizes.w4),
              Text(
                product.averageRating.toStringAsFixed(1),
                style: AppTextStyles.semiBold14.copyWith(
                  color: colors.textPrimary,
                ),
              ),
              SizedBox(width: AppSizes.w4),
              Text(
                '(${product.totalReviews} reviews)',
                style: AppTextStyles.regular13.copyWith(
                  color: colors.textHint,
                ),
              ),
              const Spacer(),
              Text(
                '${product.viewCount} views',
                style: AppTextStyles.regular12.copyWith(
                  color: colors.textHint,
                ),
              ),
            ],
          ),

          SizedBox(height: AppSizes.h16),

          // ─── Price ───────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'EGP ${product.finalPrice.toStringAsFixed(2)}',
                style: textTheme.headlineMedium?.copyWith(
                  color: colors.primary,
                  fontWeight: FontWeight.w900,
                ),
              ),
              if (product.hasDiscount) ...[
                SizedBox(width: AppSizes.w10),
                Text(
                  'EGP ${product.price.toStringAsFixed(2)}',
                  style: AppTextStyles.regular14.copyWith(
                    color: colors.textHint,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: AppSizes.w8),
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
            ],
          ),

          SizedBox(height: AppSizes.h20),

          // ─── Description ─────────────────────────────
          Text(
            'Description',
            style: AppTextStyles.semiBold14.copyWith(
              color: colors.textPrimary,
            ),
          ),
          SizedBox(height: AppSizes.h8),
          Text(
            product.localizedDescription(langCode),
            style: textTheme.bodyMedium?.copyWith(
              color: colors.textSecondary,
              height: 1.6,
            ),
          ),

          // ─── Made in ─────────────────────────────────
          SizedBox(height: AppSizes.h16),
          Row(
            children: [
              Icon(Icons.location_on_outlined,
                  size: AppSizes.sp16, color: colors.textHint),
              SizedBox(width: AppSizes.w4),
              Text(
                'Made in ${product.madeInCity}',
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
                    '🇪🇬 Egyptian Made',
                    style: AppTextStyles.regular12.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}