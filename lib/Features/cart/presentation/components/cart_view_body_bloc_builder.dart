import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_app_bar.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_bottom_bar.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_item_tile.dart';
import 'package:heka_store/Features/cart/presentation/components/empty_cart.dart';
import 'package:heka_store/Features/cart/presentation/components/products_you_may_like_section.dart';
import 'package:heka_store/Features/home/presentation/components/home/recommended_for_you_section.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';

class CartViewBodyBlocBuilder extends StatelessWidget {
  const CartViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            RefreshIndicator(
              onRefresh: () async =>
                  context.read<CartBloc>().add(const CartEvent.reLoaded()),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: CartAppBar(
                      hasItems: state.cart?.items.isNotEmpty ?? false,
                      onClearAll: () => context.read<CartBloc>().add(
                        const CartEvent.cleared(),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizes.h24)),
                  if (state.isLoading)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, _) => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.w16,
                            vertical: AppSizes.h6,
                          ),
                          child: CustomSkeletonizer(
                            enable: true,
                            child: CartItemTile.skeleton(),
                          ),
                        ),
                        childCount: 3,
                      ),
                    )
                  else if (state.cart == null || state.cart!.items.isEmpty)
                    const SliverToBoxAdapter(child: EmptyCart())
                  else
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate((_, i) {
                          final item = state.cart!.items[i];
                          return Padding(
                            padding: EdgeInsets.only(bottom: AppSizes.h12),
                            child: CartItemTile(item: item),
                          );
                        }, childCount: state.cart!.items.length),
                      ),
                    ),

                  SliverToBoxAdapter(child: SizedBox(height: AppSizes.h24)),

                  SliverToBoxAdapter(child: ProductsYouMayLikeSection()),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizes.h16)),
                  SliverToBoxAdapter(child: RecommendedForYouSection()),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizes.h100)),
                ],
              ),
            ),

            if (state.cart != null && state.cart!.items.isNotEmpty)
              CartBottomBar(cart: state.cart!),
          ],
        );
      },
    );
  }
}
