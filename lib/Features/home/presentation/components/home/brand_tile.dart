import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/rating_widget.dart';

class BrandTile extends StatelessWidget {
  final Brand brand;
  const BrandTile({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Container(
        width: AppSizes.w45,
        height: AppSizes.w45,
        decoration: BoxDecoration(
          color: colors.primarySoft,
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        child: Center(
          child: Text(
            brand.name[0],
            style: textTheme.displaySmall?.copyWith(color: colors.primary),
          ),
        ),
      ),
      title: Row(
        children: [
          Text(brand.name),
          if (brand.isVerified) ...[
            SizedBox(width: AppSizes.w4),
            Icon(
              Icons.verified_rounded,
              size: AppSizes.sp14,
              color: colors.primary,
            ),
          ],
        ],
      ),
      subtitle: RatingWidget(rating: 3.4, reviews: 903800),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: AppSizes.sp12,
        color: colors.textSecondary,
      ),
    );
  }
}

class Brand {
  final String name, reviews;
  final double rating;
  final bool isVerified;
  const Brand({
    required this.name,
    required this.rating,
    required this.reviews,
    required this.isVerified,
  });
}
