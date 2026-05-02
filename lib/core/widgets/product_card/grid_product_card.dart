import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/product_card/best_seller.dart';
import 'package:heka_store/core/widgets/product_card/cart_button.dart';
import 'package:heka_store/core/widgets/product_card/price.dart';
import 'package:heka_store/core/widgets/product_card/rating_product_card.dart';
import 'package:heka_store/core/widgets/product_card/wish_button.dart';
import 'package:heka_store/generated/l10n.dart';

class GridProductCard extends StatelessWidget {
  const GridProductCard({super.key, this.productModel});

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    final s = S.of(context);
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';
    final hasDiscount = (productModel?.discountPercentage ?? 0) > 0;

    final productName = isArabic
        ? (productModel?.nameAr ?? '')
        : (productModel?.nameEn ?? '');

    return GestureDetector(
      onTap: productModel == null
          ? null
          : () =>
                context.push(AppRoutes.productDetails, extra: productModel!.id),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Image section ────────────────────────────────────────────
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Product image
                  CachedImage(
                    width: double.infinity,
                    height: double.infinity,
                    url:
                        productModel?.primaryImageUrl ??
                        'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60',
                  ),

                  // Out-of-stock dim overlay
                  if (!(productModel?.inStock ?? true))
                    ColoredBox(color: Colors.black.withOpacity(0.4)),

                  // Out-of-stock label
                  if (!(productModel?.inStock ?? true))
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w8,
                          vertical: AppSizes.h4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(AppSizes.r8),
                        ),
                        child: Text(
                          s.outOfStock,
                          style: textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  // Featured / best-seller badge — top-start
                  if (productModel?.isFeatured ?? false)
                    Positioned(
                      top: AppSizes.h8,
                      left: AppSizes.w8,
                      child: const BestSeller(),
                    ),

                  // Discount badge — top-start (below featured if both present)
                  if (hasDiscount)
                    Positioned(
                      top: (productModel?.isFeatured ?? false)
                          ? AppSizes.h8 + 28
                          : AppSizes.h8,
                      left: AppSizes.w8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w6,
                          vertical: AppSizes.h2,
                        ),
                        decoration: BoxDecoration(
                          color: colors.error,
                          borderRadius: BorderRadius.circular(AppSizes.r6),
                        ),
                        child: Text(
                          '-${productModel!.discountPercentage}%',
                          style: textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  // Wish button — top-end (RTL-aware)
                  if (productModel != null)
                    Positioned(
                      top: AppSizes.h8,
                      right: isArabic ? null : AppSizes.w8,
                      left: isArabic ? AppSizes.w8 : null,
                      child: BlocBuilder<WishlistBloc, WishlistState>(
                        buildWhen: (p, c) =>
                            p.isInWishlist(productModel!.id) !=
                                c.isInWishlist(productModel!.id) ||
                            p.isItemLoading(productModel!.id) !=
                                c.isItemLoading(productModel!.id),
                        builder: (context, state) => WishButton(
                          isFavorited: state.isInWishlist(productModel!.id),
                          isLoading: state.isItemLoading(productModel!.id),
                          onPressed: () => context.read<WishlistBloc>().add(
                            WishlistEvent.toggled(productModel!.id),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // ── Info section ─────────────────────────────────────────────
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(AppSizes.w10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name — 2 lines
                    Text(
                      productName,
                      style: textTheme.titleSmall?.copyWith(
                        color: colors.textPrimary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppSizes.h4),

                    // Rating
                    RatingProductCard(
                      rating: productModel?.averageRating ?? 0,
                      reviewsCount: productModel?.totalReviews ?? 0,
                    ),

                    const Spacer(),

                    // Price + Cart
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Price(
                            price: productModel?.price ?? 0,
                            discountPercent: productModel?.discountPercentage,
                            hasFreeShipping: false,
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
