import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/quantity_control.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/utils/format_price.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';

class CartItemTile extends StatelessWidget {
  final CartItemModel item;

  const CartItemTile({super.key, required this.item});

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
      );

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final langCode = context.read<LanguageBloc>().state.languageCode;
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
              height: AppSizes.w100,
              url:
                  'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60',
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
                          formatEGP(amount: item.unitPrice, locale: langCode),
                          style: AppTextStyles.semiBold14.copyWith(
                            color: colors.textPrimary,
                          ),
                        ),
                        if (item.discountPrice < item.price)
                          Text(
                            formatEGP(amount: item.price, locale: langCode),
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
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ── Remove ─────────────────────────────────────────────
          GestureDetector(
            onTap: () => context.read<CartBloc>().add(
              CartEvent.itemRemoved(cartItemId: item.id),
            ),
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
