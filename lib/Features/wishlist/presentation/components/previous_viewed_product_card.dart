import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/add_to_cart_button.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/product_card/price.dart';
import 'package:heka_store/core/widgets/product_card/rating_product_card.dart';
import 'package:heka_store/core/widgets/product_card/wish_button.dart';

class PreviousViewedProductCard extends StatelessWidget {
  final ProductModel productModel;

  const PreviousViewedProductCard({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);

    return Dismissible(
      key: ValueKey(productModel.id),
      direction: DismissDirection.endToStart,
      background: _DismissBackground(),
      onDismissed: (_) {
        context.read<PreviousViewedProductsBloc>().add(
          PreviousViewedProductsEvent.removeProduct(productId: productModel.id),
        );
      },
      child: GestureDetector(
        onTap: () {
          // TODO: navigate to product details
        },
        child: Container(
          height: context.height * 0.25,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(AppSizes.r16),
          ),
          child: Row(
            children: [
              _Thumbnail(productModel: productModel),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w12,
                    vertical: AppSizes.h10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              productModel.nameEn,
                              style: textTheme.titleSmall?.copyWith(
                                color: colors.textPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          BlocBuilder<WishlistBloc, WishlistState>(
                            buildWhen: (p, c) =>
                                p.isInWishlist(productModel.id) !=
                                    c.isInWishlist(productModel.id) ||
                                p.isItemLoading(productModel.id) !=
                                    c.isItemLoading(productModel.id),
                            builder: (context, state) {
                              return WishButton(
                                isFavorited: state.isInWishlist(
                                  productModel.id,
                                ),
                                isLoading: state.isItemLoading(productModel.id),
                                onPressed: () {
                                  context.read<WishlistBloc>().add(
                                    WishlistEvent.toggled(productModel.id),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      RatingProductCard(
                        rating: productModel.averageRating,
                        reviewsCount: productModel.totalReviews,
                      ),
                      Price(
                        price: productModel.price,
                        discountPercent: productModel.discountPercentage,
                        hasFreeShipping: true,
                      ),
                      AddToCartButton(productId: productModel.id,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Thumbnail ──────────────────────────────────────────────────────────────

class _Thumbnail extends StatelessWidget {
  final ProductModel productModel;
  const _Thumbnail({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppSizes.r16),
        bottomLeft: Radius.circular(AppSizes.r16),
      ),
      child: CachedImage(
        height: double.infinity,
        width: context.width * 0.3,
        url:
            // productModel.primaryImageUrl ??
            'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60',
      ),
    );
  }
}

// ─── Dismiss Background ─────────────────────────────────────────────────────

class _DismissBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h6,
      ),
      padding: EdgeInsets.only(right: AppSizes.w20),
      decoration: BoxDecoration(
        color: Colors.red.shade400,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      child: const Icon(Icons.delete_rounded, color: Colors.white, size: 26),
    );
  }
}
