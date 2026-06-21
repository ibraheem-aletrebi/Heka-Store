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
import 'package:heka_store/generated/l10n.dart'; // S.of(context)

/// Low-stock threshold – show a warning badge when stock ≤ this value.
const int _kLowStockThreshold = 3;

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

class _CartItemTileState extends State<CartItemTile>
    with SingleTickerProviderStateMixin {
  bool _isAwaitingSheet = false;

  late final AnimationController _swipeHintCtrl;

  @override
  void initState() {
    super.initState();
    _swipeHintCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _swipeHintCtrl.dispose();
    super.dispose();
  }

  // ── Edit / sheet ───────────────────────────────────────────────────────────
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

  // ── Remove helpers ─────────────────────────────────────────────────────────
  void _removeItem() {
    context.read<CartBloc>().add(
      CartEvent.itemRemoved(cartItemId: widget.item.id),
    );
  }

  void _showRemoveConfirmation() {
    final s = S.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        title: Text(s.cartItemRemoveDialogTitle),
        content: Text(
          s.cartItemRemoveDialogContent(widget.item.productNameEn),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(s.cartItemRemoveDialogKeep),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              _removeItem();
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: Text(s.cartItemRemoveDialogConfirm),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    final langCode = context.read<LanguageBloc>().state.languageCode;
    final item = widget.item;

    final bool isOutOfStock = !item.inStock || item.stockAvailable == 0;
    final bool isLowStock =
        !isOutOfStock && item.stockAvailable <= _kLowStockThreshold;
    final bool hasDiscount =
        item.discountPrice != null && item.discountPrice! < item.price;
    final double savings = hasDiscount
        ? (item.price - item.discountPrice!) * item.quantity
        : 0;

    return BlocListener<ProductDetailsBloc, ProductDetailsState>(
      listenWhen: (prev, curr) =>
          _isAwaitingSheet &&
          curr.product?.id == item.productId &&
          prev.isLoading == true &&
          curr.isLoading == false,
      listener: (context, state) {
        if (state.error != null) {
          setState(() => _isAwaitingSheet = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Icon(Icons.error_outline, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(s.cartItemLoadError),
                ],
              ),
              backgroundColor: Colors.red.shade700,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.r12),
              ),
            ),
          );
        } else if (state.product != null) {
          _openSheet(state);
        }
      },
      child: Dismissible(
        key: ValueKey(item.id),
        direction: DismissDirection.endToStart,
        background: Container(
          margin: EdgeInsets.only(left: AppSizes.w48),
          decoration: BoxDecoration(
            color: Colors.red.shade600,
            borderRadius: BorderRadius.circular(AppSizes.r16),
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: AppSizes.w20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.delete_simple,
                color: Colors.white,
                size: AppSizes.sp16,
              ),
              const SizedBox(height: 4),
              Text(
                s.cartItemRemove,
                style: AppTextStyles.semiBold10.copyWith(
                  color: Colors.white,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ),
        confirmDismiss: (_) async {
          _showRemoveConfirmation();
          return false;
        },
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: isOutOfStock ? 0.55 : 1.0,
          child: Container(
            padding: EdgeInsets.all(AppSizes.w12),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(AppSizes.r16),
              border: Border.all(
                color: isOutOfStock
                    ? Colors.red.shade300
                    : isLowStock
                    ? Colors.orange.shade300
                    : colors.border,
                width: isOutOfStock || isLowStock ? 1.5 : 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Out-of-stock banner ──────────────────────────────────
                if (isOutOfStock)
                  _StatusBanner(
                    icon: Icons.remove_shopping_cart_outlined,
                    label: s.cartItemOutOfStockMessage,
                    color: Colors.red.shade600,
                    backgroundColor: Colors.red.shade50,
                    bottomPadding: AppSizes.h8,
                  ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Product image ──────────────────────────────────
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppSizes.r12),
                          child: CachedImage(
                            width: AppSizes.w80,
                            height: AppSizes.h100,
                            url: item.productImage.isNotEmpty
                                ? item.productImage
                                : null,
                          ),
                        ),
                        // if (hasDiscount)
                        //   Positioned(
                        //     top: 4,
                        //     left: 4,
                        //     child: _DiscountBadge(
                        //       originalPrice: item.price,
                        //       discountedPrice: item.discountPrice,
                        //     ),
                        //   ),
                      ],
                    ),

                    SizedBox(width: AppSizes.w12),

                    // ── Content ────────────────────────────────────────
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  item.productNameEn,
                                  style: AppTextStyles.semiBold12.copyWith(
                                    color: colors.textPrimary,
                                    height: 1.35,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: AppSizes.w4),

                              // ── Edit icon ──────────────────────────
                              if (item.selectedVariants.isNotEmpty)
                                BlocBuilder<
                                  ProductDetailsBloc,
                                  ProductDetailsState
                                >(
                                  buildWhen: (p, c) =>
                                      p.isLoading != c.isLoading,
                                  builder: (context, state) {
                                    final isBusy =
                                        _isAwaitingSheet && state.isLoading;
                                    return Tooltip(
                                      message: s.cartItemEditTooltip,
                                      child: GestureDetector(
                                        onTap: isBusy || isOutOfStock
                                            ? null
                                            : _onEditPressed,
                                        child: AnimatedContainer(
                                          duration: const Duration(
                                            milliseconds: 200,
                                          ),
                                          padding: const EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color: isBusy
                                                ? colors.primary.withValues(
                                                    alpha: 0.08,
                                                  )
                                                : colors.primary.withValues(
                                                    alpha: 0.1,
                                                  ),
                                            borderRadius: BorderRadius.circular(
                                              AppSizes.r8,
                                            ),
                                          ),
                                          child: isBusy
                                              ? SizedBox(
                                                  width: AppSizes.sp14,
                                                  height: AppSizes.sp14,
                                                  child:
                                                      CircularProgressIndicator(
                                                        strokeWidth: 1.8,
                                                        color: colors.primary,
                                                      ),
                                                )
                                              : Icon(
                                                  Icons.tune_rounded,
                                                  size: AppSizes.sp14,
                                                  color: colors.primary,
                                                ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                            ],
                          ),

                          SizedBox(height: AppSizes.h4),

                          // Vendor chip
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.w6,
                              vertical: AppSizes.h2,
                            ),
                            decoration: BoxDecoration(
                              color: colors.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(AppSizes.r6),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.storefront_outlined,
                                  size: AppSizes.sp16,
                                  color: colors.primary,
                                ),
                                SizedBox(width: AppSizes.w3),
                                Text(
                                  item.vendorName,
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colors.primary,
                                    fontWeight: FontWeightHelper.semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          if (item.selectedVariants.isNotEmpty) ...[
                            SizedBox(height: AppSizes.h6),
                            _VariantsRow(variants: item.selectedVariants),
                          ],

                          SizedBox(height: AppSizes.h8),

                          // ── Price row ──────────────────────────────
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    formatEGP(
                                      amount: item.unitPrice,
                                      locale: langCode,
                                    ),
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeightHelper.bold,
                                    ),
                                  ),
                                  if (hasDiscount)
                                    Text(
                                      formatEGP(
                                        amount: item.price,
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
                              _QuantityWidget(item: item),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // ── Bottom action strip ────────────────────────────────────
                if (isLowStock || hasDiscount || isOutOfStock) ...[
                  Divider(height: AppSizes.h12),
                  Row(
                    children: [
                      if (isLowStock)
                        _InlineChip(
                          icon: Icons.warning_amber_rounded,
                          label: s.cartItemOnlyXLeft(item.stockAvailable),
                          color: Colors.orange.shade700,
                          bgColor: Colors.orange.shade50,
                        ),
                      if (hasDiscount && !isOutOfStock) ...[
                        if (isLowStock) SizedBox(width: AppSizes.w6),
                        _InlineChip(
                          icon: Icons.savings_outlined,
                          label: s.cartItemYouSave(
                            formatEGP(amount: savings, locale: langCode),
                          ),
                          color: Colors.green.shade700,
                          bgColor: Colors.green.shade50,
                        ),
                      ],
                      const Spacer(),
                      GestureDetector(
                        onTap: _showRemoveConfirmation,
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.delete_simple,
                              size: AppSizes.sp14,
                              color: colors.textHint,
                            ),
                            SizedBox(width: AppSizes.w3),
                            Text(
                              s.cartItemRemove,
                              style: AppTextStyles.regular10.copyWith(
                                color: colors.textHint,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ] else ...[
                  SizedBox(height: AppSizes.h4),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: _showRemoveConfirmation,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.delete_simple,
                            size: AppSizes.sp13,
                            color: colors.textHint,
                          ),
                          SizedBox(width: AppSizes.w3),
                          Text(
                            s.cartItemRemove,
                            style: AppTextStyles.regular10.copyWith(
                              color: colors.textHint,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Quantity widget ───────────────────────────────────────────────────────────
class _QuantityWidget extends StatelessWidget {
  final CartItemModel item;
  const _QuantityWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return QuantityControl(
      buttonSize: AppSizes.w28,
      quantity: item.quantity,
      richEnd: item.quantity == item.stockAvailable,
      onIncrease: item.quantity < item.stockAvailable
          ? () => context.read<CartBloc>().add(
              CartEvent.itemUpdated(
                cartItemId: item.id,
                quantity: item.quantity + 1,
                selectedVariantIds: item.selectedVariants
                    .map((v) => v.variantId)
                    .toList(),
              ),
            )
          : null,
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
              selectedVariantIds: item.selectedVariants
                  .map((v) => v.variantId)
                  .toList(),
            ),
          );
        }
      },
    );
  }
}

// ── Status banner ─────────────────────────────────────────────────────────────
class _StatusBanner extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color backgroundColor;
  final double bottomPadding;

  const _StatusBanner({
    required this.icon,
    required this.label,
    required this.color,
    required this.backgroundColor,
    this.bottomPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: bottomPadding),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              label,
              style: AppTextStyles.regular10.copyWith(
                color: color,
                fontWeight: FontWeightHelper.semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Inline chip ───────────────────────────────────────────────────────────────
class _InlineChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color bgColor;

  const _InlineChip({
    required this.icon,
    required this.label,
    required this.color,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppSizes.r6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: color),
          const SizedBox(width: 4),
          Text(label, style: AppTextStyles.semiBold10.copyWith(color: color)),
        ],
      ),
    );
  }
}

// ── Discount badge ────────────────────────────────────────────────────────────
// class _DiscountBadge extends StatelessWidget {
//   final double originalPrice;
//   final double discountedPrice;

//   const _DiscountBadge({
//     required this.originalPrice,
//     required this.discountedPrice,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final pct = ((originalPrice - discountedPrice) / originalPrice * 100)
//         .round();
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: AppSizes.w4,
//         vertical: AppSizes.h2,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.red.shade600,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Text(
//         '-$pct%',
//         style: TextTheme.of(context).bodySmall?.copyWith(color: Colors.white),
//       ),
//     );
//   }
// }

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
