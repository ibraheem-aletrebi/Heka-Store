import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/quantity_control.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class ProductAddToCartBar extends StatelessWidget {
  final ProductDetailsModel product;

  const ProductAddToCartBar({super.key, required this.product});

  void _onAddToCart(BuildContext context, ProductDetailsState productState) {
    final variantIds = productState.selectedOptions.values
        .map((v) => v.id)
        .toList();
    context.read<CartBloc>().add(
      CartEvent.itemAdded(
        productId: product.id,
        quantity: productState.quantity,
        selectedVariantIds: variantIds,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final bottomPadding = MediaQuery.paddingOf(context).bottom + AppSizes.h16;

    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSizes.w20,
        AppSizes.h12,
        AppSizes.w20,
        bottomPadding,
      ),
      decoration: BoxDecoration(
        color: colors.background,
        border: Border(top: BorderSide(color: colors.border)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, productState) {
          final s = S.of(context);
          final stockQty = product.stockQuantity;
          final inStock = product.inStock;

          final isLowStock = inStock && stockQty <= 5;
          final canProceed = inStock && productState.allVariantsSelected;

          final buttonLabel = !inStock
              ? s.out_of_stock
              : !productState.allVariantsSelected
                  ? s.select_options
                  : s.addToCart;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Low stock warning ────────────────────
              if (isLowStock)
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.h8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: AppSizes.sp14,
                        color: const Color(0xFFB45309),
                      ),
                      SizedBox(width: AppSizes.w4),
                      Text(
                        s.only_x_left_in_stock(stockQty),
                        style: AppTextStyles.regular12.copyWith(
                          color: const Color(0xFFB45309),
                        ),
                      ),
                    ],
                  ),
                ),

              Row(
                children: [
                  // ── Quantity control ─────────────────
                  Container(
                    decoration: BoxDecoration(
                      color: colors.surface,
                      borderRadius: BorderRadius.circular(AppSizes.r12),
                      border: Border.all(color: colors.border),
                    ),
                    child: QuantityControl(
                      quantity: productState.quantity,
                      onIncrease: inStock &&
                              productState.quantity < stockQty
                          ? () => context.read<ProductDetailsBloc>().add(
                                const ProductDetailsEvent.quantityIncremented(),
                              )
                          : null,
                      onDecrease: productState.quantity > 1
                          ? () => context.read<ProductDetailsBloc>().add(
                                const ProductDetailsEvent.quantityDecremented(),
                              )
                          : null,
                    ),
                  ),

                  SizedBox(width: AppSizes.w12),

                  // ── Add-to-cart button ───────────────
                  Expanded(
                    child: BlocBuilder<CartBloc, CartState>(
                      buildWhen: (prev, curr) =>
                          prev.isAddingToCart != curr.isAddingToCart,
                      builder: (context, cartState) {
                        final isBusy = cartState.isAddingToCart;
                        return CustomButton(
                          enabled: canProceed && !isBusy,
                          isLoading: isBusy,
                          onPressed: canProceed && !isBusy
                              ? () => _onAddToCart(context, productState)
                              : null,
                          borderRadius: AppSizes.r16,
                          text: buttonLabel,
                          icon: Icon(CupertinoIcons.cart_fill),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}