import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/rating_widget.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class BrandTile extends StatelessWidget {
  final BrandModel brand;
  const BrandTile({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      leading: UserAvatar(
        imageUrl: brand.logoUrl,
        size: AppSizes.w60,
        name: brand.storeNameEn,
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      title: Row(children: [Text(brand.storeNameEn)]),
      subtitle: RatingWidget(
        rating: brand.averageRating ?? 0.0,
        reviews: brand.totalReviews ?? 0,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: AppSizes.sp12,
        color: context.myColors.textSecondary,
      ),
    );
  }
}
