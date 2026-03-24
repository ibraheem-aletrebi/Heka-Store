import 'package:flutter/material.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_add_to_cart_button.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_card_image_section.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_item_price.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/stars.dart';


class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key,  this.item});

  final WishlistItemModel? item;

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: () {
        //// TODO: Navigate to product details
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            WishlistCardImageSection(item: item),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w8,
                vertical: AppSizes.w12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item?.productName??'',
                    style: AppTextStyles.regular12.copyWith(
                      color: colors.textPrimary,
                      height: 1.3,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppSizes.h6),
                  Stars(rating: item?.averageRating?? 0),
                  SizedBox(height: AppSizes.h6),
                  WishlistItemPrice(
                    hasFreeShipping: true,
                    price: item?.finalPrice?? 0,
                    discountPercent: item?.discountPrice,
                  ),
                  SizedBox(height: AppSizes.h8),
                  WishlistAddToCartButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
