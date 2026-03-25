import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/product_card/best_seller.dart';
import 'package:heka_store/core/widgets/product_card/wish_button.dart';

class WishlistCardImageSection extends StatelessWidget {
  const WishlistCardImageSection({super.key, this.item});

  final WishlistItemModel? item;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // ─── Image ────────────────────────────────
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.r16),
            ),
            child: CachedImage(url: item?.imageUrl, fit: BoxFit.cover),
          ),

          // ─── Best Seller Badge ────────────────────
          PositionedDirectional(
            top: AppSizes.w12,
            start: AppSizes.w12,
            child: const BestSeller(),
          ),

          // ─── Wishlist Button ──────────────────────
          if (item != null)
            PositionedDirectional(
              top: AppSizes.h6,
              end: AppSizes.w6,
              child: BlocBuilder<WishlistBloc, WishlistState>(
                buildWhen: (previous, current) =>
                    previous.isItemLoading(item!.productId) !=
                    current.isItemLoading(item!.productId),
                builder: (context, state) {
                  return WishButton(
                    isFavorited: state.isInWishlist(item!.productId),
                    isLoading: state.isItemLoading(item!.productId),
                    onPressed: () => context.read<WishlistBloc>().add(
                      WishlistEvent.toggled(item!.productId),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
