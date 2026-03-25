import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/bloc/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_app_bar.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_bottom_bar.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_item_tile.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_suggestions_section.dart';
import 'package:heka_store/Features/cart/presentation/components/empty_cart.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/generated/l10n.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async =>
                    context.read<CartBloc>().add(const CartEvent.loaded()),
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
                            return CartItemTile(
                              item: item,
                              isLoading: state.isItemLoading(item.id),
                              onRemove: () => context.read<CartBloc>().add(
                                CartEvent.itemRemoved(cartItemId: item.id),
                              ),
                              onIncrease: () => context.read<CartBloc>().add(
                                CartEvent.itemUpdated(
                                  cartItemId: item.id,
                                  quantity: item.quantity + 1,
                                ),
                              ),
                              onDecrease: () {
                                if (item.quantity <= 1) {
                                  context.read<CartBloc>().add(
                                    CartEvent.itemRemoved(cartItemId: item.id),
                                  );
                                } else {
                                  context.read<CartBloc>().add(
                                    CartEvent.itemUpdated(
                                      cartItemId: item.id,
                                      quantity: item.quantity - 1,
                                    ),
                                  );
                                }
                              },
                            );
                          }, childCount: state.cart!.items.length),
                        ),
                      ),

                    SliverToBoxAdapter(child: SizedBox(height: AppSizes.h24)),

                    SliverToBoxAdapter(
                      child: SuggestionsSection(
                        title: S.of(context).itemsYouMayLike,
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: AppSizes.h16)),
                    SliverToBoxAdapter(
                      child: SuggestionsSection(
                        title: S.of(context).recommendedForYou,
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: AppSizes.h24)),
                  ],
                ),
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
