import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/data/models/selected_variant_model.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/quantity_control.dart';
import 'package:heka_store/Features/cart/presentation/components/update_cart_item_sheet.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/resources/font_weight_helper.dart';
import 'package:heka_store/core/utils/format_price.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';

class CartItemTile extends StatefulWidget {
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
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  // ✅ فقط الـ tile اللي الـ user ضغط فيها هيكون عندها _isAwaitingSheet = true
  bool _isAwaitingSheet = false;

  void _onEditPressed() {
    setState(() => _isAwaitingSheet = true);
    context.read<ProductDetailsBloc>().add(
      ProductDetailsEvent.started(widget.item.productId),
    );
  }

  void _openSheet(ProductDetailsState state) {
    setState(() => _isAwaitingSheet = false);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: context.myColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.r24)),
      ),
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: context.read<CartBloc>()),
          BlocProvider.value(value: context.read<ProductDetailsBloc>()),
        ],
        child: UpdateCartItemSheet(
          item: widget.item,
          variants: state.product?.variants ?? [],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    final langCode = context.read<LanguageBloc>().state.languageCode;

    return BlocListener<ProductDetailsBloc, ProductDetailsState>(
      // ✅ بنسمع فقط لو الـ tile دي هي اللي طلبت الـ sheet
      listenWhen: (prev, curr) =>
          _isAwaitingSheet &&
          curr.product?.id == widget.item.productId &&
          prev.isLoading == true &&
          curr.isLoading == false,
      listener: (context, state) {
        if (state.error != null) {
          setState(() => _isAwaitingSheet = false);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to load product details')),
          );
        } else if (state.product != null) {
          _openSheet(state);
        }
      },
      child: Container(
        padding: EdgeInsets.all(AppSizes.w12),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r16),
          border: Border.all(color: colors.border, width: 2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Image ─────────────────────────────────────────────
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.r12),
              child: CachedImage(
                width: AppSizes.w80,
                url:
                    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=400&auto=format&fit=crop&q=60',
              ),
            ),

            SizedBox(width: AppSizes.w12),

            // ── Content ───────────────────────────────────────────
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.productNameEn,
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
                      widget.item.vendorName,
                      style: textTheme.bodySmall?.copyWith(
                        color: colors.primary,
                        fontWeight: FontWeightHelper.semiBold,
                      ),
                    ),
                  ),
                  if (widget.item.selectedVariants.isNotEmpty) ...[
                    SizedBox(height: AppSizes.h8),
                    _VariantsRow(variants: widget.item.selectedVariants),
                  ],
                  SizedBox(height: AppSizes.h8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            formatEGP(
                              amount: widget.item.unitPrice,
                              locale: langCode,
                            ),
                            style: textTheme.titleMedium,
                          ),
                          if (widget.item.discountPrice < widget.item.price)
                            Text(
                              formatEGP(
                                amount: widget.item.price,
                                locale: langCode,
                              ),
                              style: textTheme.bodySmall?.copyWith(
                                color: colors.textHint,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                      const Spacer(),
                      QuantityControl(
                        buttonSize: AppSizes.w24,
                        quantity: widget.item.quantity,
                        richEnd:
                            widget.item.quantity == widget.item.stockAvailable,
                        onIncrease:
                            widget.item.quantity < widget.item.stockAvailable
                            ? () => context.read<CartBloc>().add(
                                CartEvent.itemUpdated(
                                  cartItemId: widget.item.id,
                                  quantity: widget.item.quantity + 1,
                                  selectedVariantIds: widget
                                      .item
                                      .selectedVariants
                                      .map((v) => v.variantId)
                                      .toList(),
                                ),
                              )
                            : null,
                        onDecrease: () {
                          if (widget.item.quantity <= 1) {
                            context.read<CartBloc>().add(
                              CartEvent.itemRemoved(cartItemId: widget.item.id),
                            );
                          } else {
                            context.read<CartBloc>().add(
                              CartEvent.itemUpdated(
                                cartItemId: widget.item.id,
                                quantity: widget.item.quantity - 1,
                                selectedVariantIds: widget.item.selectedVariants
                                    .map((v) => v.variantId)
                                    .toList(),
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

            // ── Actions column (edit + remove) ────────────────────
            Column(
              children: [
                // ✅ بيشوف فقط الـ _isAwaitingSheet الخاص بالـ tile دي
                BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
                  buildWhen: (prev, curr) => prev.isLoading != curr.isLoading,
                  builder: (context, state) {
                    final isBusy = _isAwaitingSheet && state.isLoading;
                    return CustomIconButton(
                      onPressed: isBusy ? null : () => _onEditPressed(),
                      icon: isBusy
                          ? Icons.hourglass_empty_rounded
                          : Icons.edit_outlined,
                      size: AppSizes.sp18,
                      iconColor: colors.primary,
                    );
                  },
                ),
                CustomIconButton(
                  onPressed: () => context.read<CartBloc>().add(
                    CartEvent.itemRemoved(cartItemId: widget.item.id),
                  ),
                  icon: CupertinoIcons.delete_simple,
                  size: AppSizes.sp18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ── Variants Row ──────────────────────────────────────────────────────────────
class _VariantsRow extends StatelessWidget {
  final List<SelectedVariantModel> variants;
  const _VariantsRow({required this.variants});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.w6,
      runSpacing: AppSizes.h4,
      children: variants.map((v) => _VariantChip(variant: v)).toList(),
    );
  }
}

// ── Single Variant Chip ───────────────────────────────────────────────────────
class _VariantChip extends StatelessWidget {
  final SelectedVariantModel variant;
  const _VariantChip({required this.variant});

  Color? _parseColor(String hex) {
    if (hex.isEmpty) return null;
    try {
      final cleaned = hex.replaceFirst('#', '');
      if (cleaned.length == 6) {
        return Color(int.parse('FF$cleaned', radix: 16));
      }
    } catch (_) {}
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final variantColor = _parseColor(variant.colorHex);
    final isColorType = variant.typeName.toLowerCase() == 'color';

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w6,
        vertical: AppSizes.h2,
      ),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(AppSizes.r6),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isColorType && variantColor != null) ...[
            Container(
              width: AppSizes.sp10,
              height: AppSizes.sp10,
              decoration: BoxDecoration(
                color: variantColor,
                shape: BoxShape.circle,
                border: Border.all(color: colors.border),
              ),
            ),
            SizedBox(width: AppSizes.w4),
          ],
          Text(
            '${variant.typeName}: ',
            style: AppTextStyles.regular10.copyWith(color: colors.textHint),
          ),
          Text(
            variant.value,
            style: AppTextStyles.semiBold10.copyWith(color: colors.textPrimary),
          ),
        ],
      ),
    );
  }
}
