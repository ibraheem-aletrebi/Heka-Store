import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class ProductAddToCartBar extends StatelessWidget {
  final ProductDetailsModel product;
  final ProductDetailsState state;

  const ProductAddToCartBar({
    super.key,
    required this.product,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final bottomPadding = MediaQuery.of(context).padding.bottom + AppSizes.h16;
    final canAddToCart = product.inStock;

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
      child: Row(
        children: [
          // ─── Quantity Selector ───────────────────────
          Container(
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(AppSizes.r12),
              border: Border.all(color: colors.border),
            ),
            child: Row(
              children: [
                _QtyButton(
                  icon: Icons.remove_rounded,
                  onTap: state.quantity > 1
                      ? () => context.read<ProductDetailsBloc>().add(
                          const ProductDetailsEvent.quantityDecremented(),
                        )
                      : null,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w14),
                  child: Text(
                    '${state.quantity}',
                    style: AppTextStyles.semiBold16.copyWith(
                      color: colors.textPrimary,
                    ),
                  ),
                ),
                _QtyButton(
                  icon: Icons.add_rounded,
                  onTap: state.quantity < product.stockQuantity
                      ? () => context.read<ProductDetailsBloc>().add(
                          const ProductDetailsEvent.quantityIncremented(),
                        )
                      : null,
                ),
              ],
            ),
          ),

          SizedBox(width: AppSizes.w12),

          // ─── Add to Cart Button ──────────────────────
          Expanded(
            child: GestureDetector(
              onTap: canAddToCart ? () => _onAddToCart(context) : null,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: AppSizes.h50,
                decoration: BoxDecoration(
                  color: canAddToCart ? colors.primary : colors.border,
                  borderRadius: BorderRadius.circular(AppSizes.r14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: AppSizes.sp20,
                    ),
                    SizedBox(width: AppSizes.w8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          canAddToCart ? 'Add to Cart' : 'Out of Stock',
                          style: AppTextStyles.semiBold14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        if (canAddToCart)
                          Text(
                            'EGP ${state.totalPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.regular12.copyWith(
                              color: Colors.white.withValues(alpha: 0.85),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onAddToCart(BuildContext context) {
    // TODO: dispatch cart event
    // context.read<CartBloc>().add(CartEvent.added(
    //   productId: product.id,
    //   quantity: state.quantity,
    //   selectedOptions: state.selectedOptions,
    // ));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added ${state.quantity}x to cart'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: 80,
          left: AppSizes.w16,
          right: AppSizes.w16,
        ),
      ),
    );
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppSizes.w40,
        height: AppSizes.w40,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: AppSizes.sp20,
          color: onTap != null ? colors.primary : colors.border,
        ),
      ),
    );
  }
}
