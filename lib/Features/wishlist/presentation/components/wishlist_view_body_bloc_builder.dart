import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/components/empty_wishlist.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_app_bar.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_items_staggered_grid.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/Features/wishlist/presentation/components/wishlist_card.dart';

class WishlistViewBodyBlocBuilder extends StatelessWidget {
  const WishlistViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistBloc, WishlistState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async =>
              context.read<WishlistBloc>().add(const WishlistEvent.loaded()),
          child: CustomScrollView(
            slivers: [
              // ─── AppBar ───────────────────────────────
              SliverToBoxAdapter(
                child: WishlistAppBar(
                  onBack: () => context.read<MainLayoutBloc>().add(
                    const MainLayoutEvent.changePage(0),
                  ),
                  onClearAll: state.items.isNotEmpty
                      ? () => _onClearAll(context, state)
                      : null,
                ),
              ),

              SliverToBoxAdapter(child: SizedBox(height: AppSizes.h24)),

              // ─── Loading ──────────────────────────────
              if (state.isLoading)
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w12),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, _) => Padding(
                        padding: EdgeInsets.only(bottom: AppSizes.h10),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomSkeletonizer(
                                enable: true,
                                child: WishlistCard(),
                              ),
                            ),
                            SizedBox(width: AppSizes.w10),
                            Expanded(
                              child: CustomSkeletonizer(
                                enable: true,
                                child: WishlistCard(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      childCount: 4,
                    ),
                  ),
                )
              // ─── Empty ────────────────────────────────
              else if (state.items.isEmpty )
                const SliverFillRemaining(child: EmptyWishlist())
             
              else
                WishlistItemsStaggeredGrid(items: state.items),

              // ─── Load More ────────────────────────────
              if (state.isLoadingMore)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.h16),
                    child: Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                ),
              // if (previousViewedProducts.isNotEmpty)
              //   SliverToBoxAdapter(
              //     child: PreviouslyViewedProductsSection(
              //       products: previousViewedProducts,
              //     ),
              //   ),

              SliverToBoxAdapter(child: SizedBox(height: AppSizes.h100)),
            ],
          ),
        );
      },
    );
  }

  void _onClearAll(BuildContext context, WishlistState state) {
    for (final item in state.items) {
      context.read<WishlistBloc>().add(WishlistEvent.toggled(item.productId));
    }
  }
}
