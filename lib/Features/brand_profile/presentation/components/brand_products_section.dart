import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class BrandProductsSection extends StatelessWidget {
  final List<BrandProductModel> products;
  final bool isLoading;

  const BrandProductsSection({
    super.key,
    required this.products,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return Column(
      children: [
        SectionHeader(title: s.products),
        SizedBox(height: AppSizes.h12),

        // ── Loading ──────────────────────────────────────────────────────
        if (isLoading)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Center(child: CircularProgressIndicator()),
          )
        // ── Empty state ──────────────────────────────────────────────────
        else if (products.isEmpty)
          _EmptyProducts(colors: colors, textTheme: textTheme, s: s)
        // ── Product list ─────────────────────────────────────────────────
        else
          ...products.map(
            (p) => _BrandProductTile(product: p, isArabic: isArabic),
          ),
      ],
    );
  }
}

// ── Empty state widget ───────────────────────────────────────────────────────
class _EmptyProducts extends StatelessWidget {
  final dynamic colors;
  final TextTheme textTheme;
  final S s;

  const _EmptyProducts({
    required this.colors,
    required this.textTheme,
    required this.s,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: AppSizes.h8),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.h32,
        horizontal: AppSizes.w24,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon container
          Container(
            width: AppSizes.w64,
            height: AppSizes.w64,
            decoration: BoxDecoration(
              color: colors.primarySoft,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.inventory_2_outlined,
              size: AppSizes.sp28,
              color: colors.primary,
            ),
          ),
          SizedBox(height: AppSizes.h16),
          Text(
            S.of(context).noProductsYet,
            style: textTheme.titleSmall?.copyWith(color: colors.textPrimary),
          ),
          SizedBox(height: AppSizes.h6),
          Text(
            S.of(context).noProductsYetSubtitle,
            style: textTheme.bodySmall?.copyWith(color: colors.textHint),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// ── Product tile ─────────────────────────────────────────────────────────────
class _BrandProductTile extends StatelessWidget {
  final BrandProductModel product;
  final bool isArabic;

  const _BrandProductTile({required this.product, required this.isArabic});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    final s = S.of(context);

    final productName = isArabic ? product.nameAr : product.nameEn;
    final categoryName = isArabic
        ? (product.categoryNameAr ?? '')
        : (product.categoryNameEn ?? '');

    return GestureDetector(
      onTap: () => context.push(AppRoutes.productDetails, extra: product.id),
      child: Container(
        margin: EdgeInsets.only(bottom: AppSizes.h10),
        decoration: BoxDecoration(
          color: colors.surface,
          border: Border.all(color: colors.border),
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizes.w10,
            vertical: AppSizes.h6,
          ),

          // ── Thumbnail ──────────────────────────────────────────────────
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.r8),
            child: SizedBox(
              width: AppSizes.w64,
              height: AppSizes.w64,
              child: CachedImage(
                url: product.primaryImageUrl,
                fallback: ColoredBox(color: colors.primarySoft),
              ),
            ),
          ),

          // ── Name + featured badge ──────────────────────────────────────
          title: Row(
            children: [
              Expanded(
                child: Text(
                  productName,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (product.isFeatured) ...[
                SizedBox(width: AppSizes.w4),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w6,
                    vertical: AppSizes.h2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.primarySoft,
                    borderRadius: BorderRadius.circular(AppSizes.r4),
                  ),
                  child: Text(
                    s.featured,
                    style: textTheme.labelSmall?.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ],
          ),

          // ── Category + price + stock ───────────────────────────────────
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName,
                style: textTheme.bodySmall?.copyWith(
                  color: colors.textSecondary,
                ),
              ),
              SizedBox(height: AppSizes.h4),

              // Price row
              Row(
                children: [
                  Text(
                    'EGP ${product.finalPrice.toStringAsFixed(0)}',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: colors.primary,
                    ),
                  ),
                  if (product.discountPrice != null) ...[
                    SizedBox(width: AppSizes.w6),
                    Text(
                      'EGP ${product.price.toStringAsFixed(0)}',
                      style: textTheme.bodySmall?.copyWith(
                        color: colors.textSecondary,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                  if ((product.discountPercentage ?? 0) > 0) ...[
                    SizedBox(width: AppSizes.w4),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w4,
                        vertical: AppSizes.h2,
                      ),
                      decoration: BoxDecoration(
                        color: colors.error.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(AppSizes.r4),
                      ),
                      child: Text(
                        '-${product.discountPercentage}%',
                        style: textTheme.labelSmall?.copyWith(
                          color: colors.error,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ],
              ),

              // Stock indicator
              SizedBox(height: AppSizes.h4),
              Row(
                children: [
                  Container(
                    width: AppSizes.w6,
                    height: AppSizes.w6,
                    decoration: BoxDecoration(
                      color: product.inStock ? colors.success : colors.error,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: AppSizes.w4),
                  Text(
                    product.inStock ? s.inStock : s.outOfStock,
                    style: textTheme.labelSmall?.copyWith(
                      color: product.inStock ? colors.success : colors.error,
                    ),
                  ),
                ],
              ),
            ],
          ),

          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: AppSizes.sp12,
            color: colors.textSecondary,
          ),
        ),
      ),
    );
  }
}
