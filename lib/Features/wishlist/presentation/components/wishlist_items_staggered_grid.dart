
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_card.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class WishlistItemsStaggeredGrid extends StatefulWidget {
  const WishlistItemsStaggeredGrid({super.key, required this.items});

  final List<WishlistItemModel> items;

  @override
  State<WishlistItemsStaggeredGrid> createState() =>
      _WishlistItemsStaggeredGridState();
}

class _WishlistItemsStaggeredGridState
    extends State<WishlistItemsStaggeredGrid> {
  @override
  Widget build(BuildContext context) {
    final rowCount = (widget.items.length / 2).ceil();

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.w12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, rowIndex) {
            // ─── Load More ──────────────────────────────
            if (rowIndex == rowCount - 1) {
              final state = context.read<WishlistBloc>().state;
              if (state.hasNextPage && !state.isLoadingMore) {
                context
                    .read<WishlistBloc>()
                    .add(const WishlistEvent.nextPageFetched());
              }
            }

            final firstIndex = rowIndex * 2;
            final secondIndex = firstIndex + 1;

            return Padding(
              padding: EdgeInsets.only(bottom: AppSizes.h10),
              child: Row(
                children: [
                  Expanded(
                    child: WishlistCard(item: widget.items[firstIndex]),
                  ),
                  SizedBox(width: AppSizes.w10),
                  Expanded(
                    child: secondIndex < widget.items.length
                        ? WishlistCard(item: widget.items[secondIndex])
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            );
          },
          childCount: rowCount,
        ),
      ),
    );
  }
}