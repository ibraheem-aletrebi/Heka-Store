import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/product_card/best_seller.dart';
import 'package:heka_store/core/widgets/product_card/cart_button.dart';
import 'package:heka_store/core/widgets/product_card/price.dart';
import 'package:heka_store/core/widgets/product_card/rating_product_card.dart';
import 'package:heka_store/core/widgets/product_card/wish_button.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? productModel;

  const ProductCard({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);

    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetails, extra: productModel!.id);
        // context.read<PreviousViewedProductsBloc>().add(
        //   PreviousViewedProductsEvent.addProduct(product: productModel!),
        // );
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: MediaQuery.sizeOf(context).width * .7,
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
                  height: context.height * 0.13,
                  width: double.infinity,
                  url:
                      productModel?.primaryImageUrl ??
                      'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60',
                ),

                if (productModel?.isFeatured ?? false)
                  Positioned(
                    top: AppSizes.h8,
                    left: AppSizes.w8,
                    child: BestSeller(),
                  ),

                if (productModel != null)
                  Positioned(
                    top: AppSizes.h8,
                    right: AppSizes.w8,
                    child: BlocBuilder<WishlistBloc, WishlistState>(
                      buildWhen: (p, c) =>
                          p.isInWishlist(productModel!.id) !=
                              c.isInWishlist(productModel!.id) ||
                          p.isItemLoading(productModel!.id) !=
                              c.isItemLoading(productModel!.id),
                      builder: (context, state) {
                        return WishButton(
                          isFavorited: state.isInWishlist(productModel!.id),
                          isLoading: state.isItemLoading(productModel!.id),
                          onPressed: () {
                            context.read<WishlistBloc>().add(
                              WishlistEvent.toggled(productModel!.id),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),

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

                    RatingProductCard(
                      rating: productModel?.averageRating ?? 0,
                      reviewsCount: productModel?.totalReviews ?? 0,
                    ),
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
                        CartButton(productId: productModel?.id ?? 0),
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
