import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/components/previous_viewed_product_card.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';

class PreviousViewedProductsViewBody extends StatelessWidget {
  const PreviousViewedProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviousViewedProductsBloc, PreviousViewedProductsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (msg) => Center(child: Text(msg)),
          loaded: (products) {
            return Column(
              spacing: AppSizes.h24,
              children: [
                Column(
                  spacing: AppSizes.h12,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            icon: Icons.chevron_left_rounded,
                            onPressed: () => context.pop(true),
                          ),
                          (products.isNotEmpty)
                              ? TextButton.icon(
                                  onPressed: () => context
                                      .read<PreviousViewedProductsBloc>()
                                      .add(
                                        const PreviousViewedProductsEvent.clear(),
                                      ),
                                  icon: Icon(
                                    Icons.delete_sweep_rounded,
                                    size: AppSizes.sp22,
                                  ),
                                  label: Text('Clear all'),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(color: context.myColors.textHint),
                  ],
                ),

                products.isEmpty
                    ? _EmptyHistory()
                    : Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.w16,
                          ),
                          separatorBuilder: (_, __) =>
                              SizedBox(height: AppSizes.h16),
                          itemCount: products.length,
                          itemBuilder: (_, index) => PreviousViewedProductCard(
                            productModel: products[index],
                          ),
                        ),
                      ),
              ],
            );
          },
        );
      },
    );
  }
}

class _EmptyHistory extends StatelessWidget {
  const _EmptyHistory();

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.history_rounded,
            size: 72,
            color: colors.textSecondary.withOpacity(0.3),
          ),

          SizedBox(height: AppSizes.h16),

          Text(
            'No recently viewed products',
            style: textTheme.titleMedium?.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: AppSizes.h8),

          Text(
            'Products you view will appear here\nso you can easily find them again.',
            textAlign: TextAlign.center,
            style: textTheme.bodySmall?.copyWith(
              color: colors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
