import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/quantity_control.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/core/widgets/variant_row.dart';

class UpdateCartItemSheet extends StatefulWidget {
  final CartItemModel item;
  final List<ProductVariantModel> variants;

  const UpdateCartItemSheet({
    super.key,
    required this.item,
    required this.variants,
  });

  @override
  State<UpdateCartItemSheet> createState() => _UpdateCartItemSheetState();
}

class _UpdateCartItemSheetState extends State<UpdateCartItemSheet> {
  late int _quantity;
  late Map<String, ProductVariantOptionModel> _selectedOptions;

  // ✅ flag عشان نعرف إن الـ update جه من الـ sheet دي بالظبط
  bool _isUpdating = false;

  @override
  void initState() {
    super.initState();
    _quantity = widget.item.quantity;
    _selectedOptions = {};
    for (final variant in widget.variants) {
      for (final option in variant.options) {
        final isCurrentlySelected = widget.item.selectedVariants.any(
          (sv) => sv.variantId == option.id,
        );
        if (isCurrentlySelected) {
          _selectedOptions[variant.typeName] = option;
        }
      }
    }
  }

  double get _totalVariantAdjustment =>
      _selectedOptions.values.fold(0.0, (sum, o) => sum + o.priceAdjustment);

  double get _displayPrice =>
      widget.item.discountPrice + _totalVariantAdjustment;

  void _toggleOption(String typeName, ProductVariantOptionModel option) {
    setState(() {
      if (_selectedOptions[typeName]?.id == option.id) {
        _selectedOptions.remove(typeName);
      } else {
        _selectedOptions[typeName] = option;
      }
    });
  }

  void _onUpdate() {
    final variantIds = _selectedOptions.values.map((v) => v.id).toList();
    setState(() => _isUpdating = true);
    context.read<CartBloc>().add(
      CartEvent.itemUpdated(
        cartItemId: widget.item.id,
        quantity: _quantity,
        selectedVariantIds: variantIds.isEmpty ? null : variantIds,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final bottomPadding = MediaQuery.paddingOf(context).bottom;

    return BlocListener<CartBloc, CartState>(
      // ✅ نسمع فقط لما الـ update اللي من الـ sheet دي خلص
      listenWhen: (prev, curr) =>
          _isUpdating &&
          prev.loadingItems.containsKey(widget.item.id) &&
          !curr.loadingItems.containsKey(widget.item.id),
      listener: (context, state) {
        setState(() => _isUpdating = false);
        if (state.error == null) {
          // ✅ قفل الـ sheet
          Navigator.of(context).pop();
          // ✅ reload الـ cart
          context.read<CartBloc>().add(const CartEvent.reLoaded());
        } else {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error?.serverMessage ?? 'Update failed'),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: colors.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSizes.r24),
          ),
        ),
        padding: EdgeInsets.fromLTRB(
          AppSizes.w20,
          AppSizes.h16,
          AppSizes.w20,
          bottomPadding + AppSizes.h24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: AppSizes.w40,
                height: 4,
                decoration: BoxDecoration(
                  color: colors.border,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            SizedBox(height: AppSizes.h20),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.productNameEn,
                        style: AppTextStyles.semiBold16.copyWith(
                          color: colors.textPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppSizes.h4),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: Text(
                          'EGP ${_displayPrice.toStringAsFixed(2)}',
                          key: ValueKey(_displayPrice),
                          style: AppTextStyles.semiBold16.copyWith(
                            color: colors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ── Quantity ──────────────────────────────────────
                Container(
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: BorderRadius.circular(AppSizes.r12),
                    border: Border.all(color: colors.border),
                  ),
                  child: QuantityControl(
                    buttonSize: AppSizes.w40,
                    iconSize: AppSizes.sp18,
                    onIncrease: _quantity < widget.item.stockAvailable
                        ? () => setState(() => _quantity++)
                        : null,
                    onDecrease: _quantity > 1
                        ? () => setState(() => _quantity--)
                        : null,
                    quantity: _quantity,
                  ),
                ),
              ],
            ),

            SizedBox(height: AppSizes.h20),

            // ── Variants ──────────────────────────────────────────
            if (widget.variants.isNotEmpty) ...[
              ...widget.variants.map((variant) {
                return Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.h12),
                  child: VariantRow(
                    typeName: variant.typeName,
                    options: variant.options,
                    selectedOption: _selectedOptions[variant.typeName],
                    onSelect: (option) =>
                        _toggleOption(variant.typeName, option),
                  ),
                );
              }),
              SizedBox(height: AppSizes.h8),
            ],

            // ── Update Button ─────────────────────────────────────
            BlocBuilder<CartBloc, CartState>(
              buildWhen: (prev, curr) =>
                  prev.loadingItems[widget.item.id] !=
                  curr.loadingItems[widget.item.id],
              builder: (context, state) {
                // ✅ isLoading مرتبط بالـ item id بالظبط مش بالـ global state
                final isBusy =
                    _isUpdating && state.isItemLoading(widget.item.id);
                return CustomButton(
                  icon: const Icon(
                    CupertinoIcons.arrow_2_circlepath,
                    color: Colors.white,
                  ),
                  isLoading: isBusy,
                  onPressed: isBusy ? null : _onUpdate,
                  text: 'Update Cart Item',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
