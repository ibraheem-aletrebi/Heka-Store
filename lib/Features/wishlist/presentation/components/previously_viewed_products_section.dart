import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class PreviouslyViewedProductsSection extends StatefulWidget {
  const PreviouslyViewedProductsSection({super.key});

  @override
  State<PreviouslyViewedProductsSection> createState() =>
      _PreviouslyViewedProductsSectionState();
}

class _PreviouslyViewedProductsSectionState
    extends State<PreviouslyViewedProductsSection> {
  @override
  void initState() {
    super.initState();
    context.read<PreviousViewedProductsBloc>().add(
      const PreviousViewedProductsEvent.getProducts(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviousViewedProductsBloc, PreviousViewedProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (products) {
            if (products.isEmpty) return const SizedBox.shrink();
            return Column(
              spacing: AppSizes.h16,
              children: [
                SectionHeader(
                  title: S.of(context).previouslyViewedItem,
                  onSeeAll: () async {
                    await context.push(AppRoutes.previousViewedProductsView);
                    if (context.mounted) {
                      context.read<PreviousViewedProductsBloc>().add(
                        const PreviousViewedProductsEvent.getProducts(),
                      );
                      context.read<WishlistBloc>().add(
                        const WishlistEvent.reLoaded(),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.w12),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: products.length > 5 ? 5 : products.length,
                    separatorBuilder: (_, __) => SizedBox(width: AppSizes.w10),
                    itemBuilder: (_, i) =>
                        ProductCard(productModel: products[i]),
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
