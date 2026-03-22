import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/product_card/best_seller.dart';
import 'package:heka_store/core/widgets/product_card/cart_button.dart';
import 'package:heka_store/core/widgets/product_card/favorite_button.dart';
import 'package:heka_store/core/widgets/product_card/price.dart';
import 'package:heka_store/core/widgets/product_card/rating_product_card.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? productModel;
  const ProductCard({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    return GestureDetector(
      onTap: () {
        ////TODO: navigate to product details
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: MediaQuery.sizeOf(context).width * .75,
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedImage(
                  height: AppSizes.h130,
                  width: double.infinity,
                  url:
                      // productModel?.primaryImageUrl ??
                      'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D',
                ),
                if (productModel?.isFeatured ?? false)
                  Positioned(
                    top: AppSizes.h8,
                    left: AppSizes.w8,
                    child: BestSeller(),
                  ),
                Positioned(
                  top: AppSizes.h8,
                  right: AppSizes.w8,
                  child: FavoriteButton(
                    onPressed: () {
                      ////TODO: add to favorite
                    },
                    isFavorited: true,
                  ),
                ),
              ],
            ),
            // Info
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(AppSizes.w12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productModel?.nameEn ?? '',
                      style: textTheme.titleSmall?.copyWith(
                        color: colors.textPrimary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppSizes.h4),
                    RatingProductCard(rating: 4.5, reviewsCount: 479798),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Price(
                            price: productModel?.price ?? 0,
                            discountPercent: productModel?.discountPercentage,
                            hasFreeShipping: true,
                          ),
                        ),
                        CartButton(
                          onPressed: () {
                            ////TODO: add to cart
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
