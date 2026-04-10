import 'package:flutter/material.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
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
    return Column(
      children: [
        SectionHeader(title: S.of(context).products, onSeeAll: () {}),
        SizedBox(height: AppSizes.h12),
        ...products.map((p) => _BrandProductTile(product: p)),
      ],
    );
  }
}

class _BrandProductTile extends StatelessWidget {
  final BrandProductModel product;
  const _BrandProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(bottom: AppSizes.h10),
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border.all(color: colors.border),
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.w10, vertical: AppSizes.h6),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.r8),
          child: SizedBox(
            width: AppSizes.w64,
            height: AppSizes.w64,
            child: CachedImage(
              url: product.primaryImageUrl,
              fallback: Container(color: colors.primarySoft),
            ),
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                product.nameEn,
                style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (product.isFeatured)
              Container(
                margin: EdgeInsets.only(left: AppSizes.w4),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: colors.primarySoft,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text('Featured', style: TextStyle(fontSize: 10, color: colors.primary)),
              ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.categoryNameEn ?? '', style: textTheme.bodySmall?.copyWith(color: colors.textSecondary)),
            SizedBox(height: AppSizes.h4),
            Row(
              children: [
                Text(
                  'EGP ${product.finalPrice.toStringAsFixed(0)}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: colors.primary),
                ),
                if (product.discountPrice != null) ...[
                  SizedBox(width: AppSizes.w6),
                  Text(
                    'EGP ${product.price.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 11, color: colors.textSecondary, decoration: TextDecoration.lineThrough),
                  ),
                ],
                if (product.discountPercentage != null && product.discountPercentage! > 0) ...[
                  SizedBox(width: AppSizes.w4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '-${product.discountPercentage}%',
                      style: TextStyle(fontSize: 10, color: Colors.green.shade700, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ],
            ),
            if (product.inStock)
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 4),
                  Text('In stock', style: TextStyle(fontSize: 10, color: Colors.green)),
                ],
              ),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: AppSizes.sp12, color: colors.textSecondary),
      ),
    );
  }
}