import 'package:flutter/material.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class ProductVendorSection extends StatelessWidget {
  final ProductDetailsModel product;
  final String langCode;

  const ProductVendorSection({
    super.key,
    required this.product,
    required this.langCode,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final vendorName =
        langCode == 'ar' ? product.vendorNameAr : product.vendorName;

    return Padding(
      padding: EdgeInsets.all(AppSizes.w20),
      child: Row(
        children: [
          Container(
            width: AppSizes.w48,
            height: AppSizes.w48,
            decoration: BoxDecoration(
              color: colors.primarySoft,
              borderRadius: BorderRadius.circular(AppSizes.r12),
            ),
            child: Icon(
              Icons.store_rounded,
              color: colors.primary,
              size: AppSizes.sp22,
            ),
          ),
          SizedBox(width: AppSizes.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.sold_by,
                  style: AppTextStyles.regular12.copyWith(
                    color: colors.textHint,
                  ),
                ),
                SizedBox(height: AppSizes.h2),
                Text(
                  vendorName,
                  style: AppTextStyles.semiBold14.copyWith(
                    color: colors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: colors.textHint,
            size: AppSizes.sp22,
          ),
        ],
      ),
    );
  }
}