import 'package:flutter/material.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/presentation/components/quantity_control.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';

class CartItemTile extends StatelessWidget {
  final CartItemModel item;
  final bool isLoading;
  final VoidCallback onRemove;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CartItemTile({
    super.key,
    required this.item,
    required this.isLoading,
    required this.onRemove,
    required this.onIncrease,
    required this.onDecrease,
  });

  const CartItemTile.skeleton({super.key})
    : item = const CartItemModel(
        id: 0,
        productId: 0,
        productNameAr: 'placeholder',
        productNameEn: 'placeholder',
        productImage: '',
        price: 0,
        discountPrice: 0,
        unitPrice: 0,
        quantity: 1,
        totalPrice: 0,
        stockAvailable: 0,
        inStock: true,
        vendorId: 0,
        vendorName: 'placeholder',
        addedAt: '',
      ),
      isLoading = false,
      onRemove = _noop,
      onIncrease = _noop,
      onDecrease = _noop;

  static void _noop() {}

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Container(
      padding: EdgeInsets.all(AppSizes.w12),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.r12),
            child: CachedImage(
              width: AppSizes.w80,
              height: AppSizes.w80,
              url: item.productImage,
            ),
          ),

          SizedBox(width: AppSizes.w12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productNameEn,
                  style: AppTextStyles.semiBold12.copyWith(
                    color: colors.textPrimary,
                    height: 1.35,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: AppSizes.h6),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w4,
                    vertical: AppSizes.h2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Text(
                    item.vendorName,
                    style: AppTextStyles.semiBold14.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ),

                SizedBox(height: AppSizes.h8),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EGP ${item.unitPrice.toStringAsFixed(2)}',
                          style: AppTextStyles.semiBold14.copyWith(
                            color: colors.textPrimary,
                          ),
                        ),
                        if (item.discountPrice < item.price)
                          Text(
                            'EGP ${item.price.toStringAsFixed(2)}',
                            style: AppTextStyles.regular12.copyWith(
                              color: colors.textHint,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                      ],
                    ),
                    const Spacer(),
                    QuantityControl(
                      quantity: item.quantity,
                      onIncrease: onIncrease,
                      onDecrease: onDecrease,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ── Remove ─────────────────────────────────────────────
          GestureDetector(
            onTap: isLoading ? null : onRemove,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.w4),
              child: Icon(
                Icons.close_rounded,
                size: 18,
                color: colors.textHint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
