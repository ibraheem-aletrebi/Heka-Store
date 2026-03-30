import 'package:flutter/material.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/cart/presentation/components/summary_row.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class CartBottomBar extends StatefulWidget {
  final CartModel cart;

  const CartBottomBar({super.key, required this.cart});

  @override
  State<CartBottomBar> createState() => _CartBottomBarState();
}

class _CartBottomBarState extends State<CartBottomBar>
    with SingleTickerProviderStateMixin {
  bool _summaryOpen = false;
  late final AnimationController _sheetCtrl;
  late final Animation<double> _sheetAnim;
  late final Animation<double> _arrowAnim;

  @override
  void initState() {
    super.initState();
    _sheetCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 320),
    );
    _sheetAnim = CurvedAnimation(
      parent: _sheetCtrl,
      curve: Curves.easeOutCubic,
      reverseCurve: Curves.easeInCubic,
    );
    _arrowAnim = Tween<double>(
      begin: 0,
      end: 0.5,
    ).animate(CurvedAnimation(parent: _sheetCtrl, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _sheetCtrl.dispose();
    super.dispose();
  }

  void _toggleSummary() {
    setState(() => _summaryOpen = !_summaryOpen);
    _summaryOpen ? _sheetCtrl.forward() : _sheetCtrl.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final cart = widget.cart;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizeTransition(
          sizeFactor: _sheetAnim,
          axisAlignment: -1,
          child: Container(
            decoration: BoxDecoration(
              color: colors.surface,
              border: Border(top: BorderSide(color: colors.divider, width: 1)),
            ),
            padding: EdgeInsets.fromLTRB(
              AppSizes.w20,
              AppSizes.h16,
              AppSizes.w20,
              AppSizes.h8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: EdgeInsets.only(bottom: AppSizes.h16),
                    decoration: BoxDecoration(
                      color: colors.divider,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),

                SummaryRow(
                  label: 'Sub-total',
                  value: 'EGP ${cart.subTotal.toStringAsFixed(2)}',
                ),
                SizedBox(height: AppSizes.h12),

                SummaryRow(
                  label: 'Shipping fee',
                  value: cart.shippingCost == 0
                      ? 'Free'
                      : 'EGP ${cart.shippingCost.toStringAsFixed(2)}',
                ),
                SizedBox(height: AppSizes.h12),

                if (cart.hasOutOfStockItems)
                  Padding(
                    padding: EdgeInsets.only(bottom: AppSizes.h12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          size: 16,
                          color: Colors.orange,
                        ),
                        SizedBox(width: AppSizes.w6),
                        Text(
                          'Some items are out of stock',
                          style: AppTextStyles.regular12.copyWith(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSizes.h12),
                  child: Divider(color: colors.divider, height: 1),
                ),

                Row(
                  children: [
                    Text(
                      'Total',
                      style: AppTextStyles.bold16.copyWith(
                        color: colors.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'EGP ${cart.totalAmount.toStringAsFixed(2)}',
                      style: AppTextStyles.semiBold18.copyWith(
                        color: colors.primary,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.h8),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            AppSizes.w16,
            AppSizes.h12,
            AppSizes.w16,
            AppSizes.h24,
          ),
          decoration: BoxDecoration(
            color: colors.surface,
            border: Border(top: BorderSide(color: colors.divider, width: 1)),
          ),
          child: SafeArea(
            top: false,
            child: Row(
              children: [
                GestureDetector(
                  onTap: _toggleSummary,
                  behavior: HitTestBehavior.opaque,
                  child: Row(
                    children: [
                      RotationTransition(
                        turns: _arrowAnim,
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: colors.primary,
                          size: 22,
                        ),
                      ),
                      SizedBox(width: AppSizes.w4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Total',
                            style: AppTextStyles.regular12.copyWith(
                              color: colors.textHint,
                            ),
                          ),
                          SizedBox(height: AppSizes.h2),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Text(
                              'EGP ${cart.totalAmount.toStringAsFixed(2)}',
                              key: ValueKey(cart.totalAmount),
                              style: AppTextStyles.bold16.copyWith(
                                color: colors.textPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(width: AppSizes.w16),

                // ── Checkout Button ──
                Expanded(
                  child: GestureDetector(
                    onTap: cart.hasOutOfStockItems
                        ? null
                        : () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (_) => CreateOrderScreen(),
                            //   ),
                            // );
                          },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 50,
                      decoration: BoxDecoration(
                        color: cart.hasOutOfStockItems
                            ? colors.textHint
                            : colors.primary,
                        borderRadius: BorderRadius.circular(AppSizes.r14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cart.hasOutOfStockItems
                                ? 'Remove out of stock items'
                                : 'Checkout',
                            style: AppTextStyles.semiBold15.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: AppSizes.w6),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
