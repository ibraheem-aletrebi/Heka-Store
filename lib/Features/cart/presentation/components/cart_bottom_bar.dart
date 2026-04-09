import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/cart/presentation/components/summary_row.dart';
import 'package:heka_store/Features/order/presentation/blocs/order/order_bloc.dart';
import 'package:heka_store/Features/order/presentation/views/create_order_screen.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

/// Free-shipping threshold in EGP. Adjust to match your business rule.
const double _kFreeShippingThreshold = 500.0;

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

  // ── Derived helpers ────────────────────────────────────────────────────────
  double get _savings {
    final cart = widget.cart;

    double savings = 0;

    for (final item in cart.items) {
      final original = item.price * item.quantity;
      final discounted = item.discountPrice * item.quantity;

      savings += (original - discounted);
    }

    return savings.clamp(0, double.infinity);
  }

  double get _freeShippingProgress =>
      (widget.cart.subTotal / _kFreeShippingThreshold).clamp(0.0, 1.0);

  bool get _qualifiesForFreeShipping =>
      widget.cart.subTotal >= _kFreeShippingThreshold;

  double get _amountToFreeShipping =>
      (_kFreeShippingThreshold - widget.cart.subTotal).clamp(
        0,
        double.infinity,
      );

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final cart = widget.cart;
    final hasOutOfStock = cart.hasOutOfStockItems;
    final savings = _savings;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ── Expandable summary panel ─────────────────────────────────────────
        SizeTransition(
          sizeFactor: _sheetAnim,
          axisAlignment: -1,
          child: _SummaryPanel(cart: cart, savings: savings),
        ),

        // ── Free-shipping progress bar ───────────────────────────────────────
        if (!_qualifiesForFreeShipping)
          _FreeShippingBanner(
            progress: _freeShippingProgress,
            amountLeft: _amountToFreeShipping,
          )
        else if (cart.shippingCost == 0)
          _FreeShippingEarnedBanner(),

        // ── Main bottom bar ──────────────────────────────────────────────────
        Container(
          padding: EdgeInsets.fromLTRB(
            AppSizes.w16,
            AppSizes.h12,
            AppSizes.w16,
            AppSizes.h16,
          ),
          decoration: BoxDecoration(
            color: colors.surface,
            border: Border(top: BorderSide(color: colors.divider, width: 1)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 12,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ── Out-of-stock warning ──────────────────────────────────
                if (hasOutOfStock)
                  _OutOfStockWarning(
                    onRemoveAll: () {
                      // TODO: dispatch remove-all-out-of-stock event
                    },
                  ),

                if (hasOutOfStock) SizedBox(height: AppSizes.h10),

                // ── Price row + checkout button ───────────────────────────
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ── Tap to toggle summary ─────────────────────────────
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
                                s.cartBottomBarTotal,
                                style: AppTextStyles.regular12.copyWith(
                                  color: colors.textHint,
                                ),
                              ),
                              SizedBox(height: AppSizes.h2),
                              // Animated price when total changes
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 250),
                                transitionBuilder: (child, anim) =>
                                    FadeTransition(
                                      opacity: anim,
                                      child: SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(0, 0.3),
                                          end: Offset.zero,
                                        ).animate(anim),
                                        child: child,
                                      ),
                                    ),
                                child: Text(
                                  s.cartBottomBarEgpAmount(
                                    cart.totalAmount.toStringAsFixed(2),
                                  ),
                                  key: ValueKey(cart.totalAmount),
                                  style: AppTextStyles.bold16.copyWith(
                                    color: colors.textPrimary,
                                  ),
                                ),
                              ),
                              // Savings label below price
                              if (savings > 0)
                                Text(
                                  s.cartBottomBarSaving(
                                    savings.toStringAsFixed(2),
                                  ),
                                  style: AppTextStyles.regular10.copyWith(
                                    color: Colors.green.shade600,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: AppSizes.w12),

                    // ── Checkout button ───────────────────────────────────
                    Expanded(
                      child: _CheckoutButton(
                        hasOutOfStock: hasOutOfStock,
                        onCheckout: hasOutOfStock
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => MultiBlocProvider(
                                      providers: [
                                        BlocProvider(
                                          create: (context) => sl<OrderBloc>(),
                                        ),
                                        BlocProvider(
                                          create: (context) =>
                                              sl<AddressBloc>(),
                                        ),
                                      ],
                                      child: CreateOrderScreen(),
                                    ),
                                  ),
                                );
                              },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ── Summary panel ─────────────────────────────────────────────────────────────
class _SummaryPanel extends StatelessWidget {
  final CartModel cart;
  final double savings;

  const _SummaryPanel({required this.cart, required this.savings});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
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
          // Drag handle
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
            label: s.cartSummarySubtotal,
            value: s.cartBottomBarEgpAmount(cart.subTotal.toStringAsFixed(2)),
          ),
          SizedBox(height: AppSizes.h12),

          SummaryRow(
            label: s.cartSummaryShipping,
            value: cart.shippingCost == 0
                ? s.cartSummaryShippingFree
                : s.cartBottomBarEgpAmount(
                    cart.shippingCost.toStringAsFixed(2),
                  ),
            valueColor: cart.shippingCost == 0 ? Colors.green.shade600 : null,
          ),
          SizedBox(height: AppSizes.h12),

          // Savings row — only shown when there's a discount
          if (savings > 0) ...[
            SummaryRow(
              label: s.cartSummaryDiscount,
              value:
                  '- ${s.cartBottomBarEgpAmount(savings.toStringAsFixed(2))}',
              valueColor: Colors.green.shade600,
            ),
            SizedBox(height: AppSizes.h12),
          ],

          // Out-of-stock warning inside summary
          if (cart.hasOutOfStockItems)
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.h12),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    size: 15,
                    color: Colors.orange.shade700,
                  ),
                  SizedBox(width: AppSizes.w6),
                  Expanded(
                    child: Text(
                      s.cartSummaryOutOfStockWarning,
                      style: AppTextStyles.regular12.copyWith(
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          Divider(color: colors.divider, height: 1),
          SizedBox(height: AppSizes.h12),

          Row(
            children: [
              Text(
                s.cartBottomBarTotal,
                style: AppTextStyles.bold16.copyWith(color: colors.textPrimary),
              ),
              const Spacer(),
              Text(
                s.cartBottomBarEgpAmount(cart.totalAmount.toStringAsFixed(2)),
                style: AppTextStyles.semiBold18.copyWith(color: colors.primary),
              ),
            ],
          ),

          SizedBox(height: AppSizes.h8),
        ],
      ),
    );
  }
}

// ── Free-shipping progress banner ─────────────────────────────────────────────
class _FreeShippingBanner extends StatelessWidget {
  final double progress;
  final double amountLeft;

  const _FreeShippingBanner({required this.progress, required this.amountLeft});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h8,
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        border: Border(top: BorderSide(color: colors.divider, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.local_shipping_outlined,
                size: 14,
                color: Colors.green.shade700,
              ),
              SizedBox(width: AppSizes.w6),
              Text(
                s.cartFreeShippingProgress(amountLeft.toStringAsFixed(0)),
                style: AppTextStyles.regular12.copyWith(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.h6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: progress),
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutCubic,
              builder: (_, value, __) => LinearProgressIndicator(
                value: value,
                minHeight: 5,
                backgroundColor: Colors.green.shade100,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.green.shade500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Free-shipping earned banner ───────────────────────────────────────────────
class _FreeShippingEarnedBanner extends StatelessWidget {
  const _FreeShippingEarnedBanner();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h8,
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        border: Border(top: BorderSide(color: colors.divider, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            size: 14,
            color: Colors.green.shade700,
          ),
          SizedBox(width: AppSizes.w6),
          Text(
            s.cartFreeShippingEarned,
            style: AppTextStyles.regular12.copyWith(
              color: Colors.green.shade700,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Out-of-stock inline warning with action ───────────────────────────────────
class _OutOfStockWarning extends StatelessWidget {
  final VoidCallback onRemoveAll;

  const _OutOfStockWarning({required this.onRemoveAll});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w12,
        vertical: AppSizes.h8,
      ),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(AppSizes.r10),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber_rounded,
            size: 16,
            color: Colors.orange.shade700,
          ),
          SizedBox(width: AppSizes.w8),
          Expanded(
            child: Text(
              s.cartOutOfStockCheckoutBlocked,
              style: AppTextStyles.regular12.copyWith(
                color: Colors.orange.shade800,
              ),
            ),
          ),
          SizedBox(width: AppSizes.w8),
          // One-tap clear action
          GestureDetector(
            onTap: onRemoveAll,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w8,
                vertical: AppSizes.h4,
              ),
              decoration: BoxDecoration(
                color: Colors.orange.shade700,
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Text(
                s.cartOutOfStockClearAll,
                style: AppTextStyles.semiBold10.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Checkout button ───────────────────────────────────────────────────────────
class _CheckoutButton extends StatelessWidget {
  final bool hasOutOfStock;
  final VoidCallback? onCheckout;

  const _CheckoutButton({
    required this.hasOutOfStock,
    required this.onCheckout,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return GestureDetector(
      onTap: onCheckout,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 52,
        decoration: BoxDecoration(
          color: hasOutOfStock
              ? colors.textHint.withValues(alpha: 0.4)
              : colors.primary,
          borderRadius: BorderRadius.circular(AppSizes.r14),
          boxShadow: hasOutOfStock
              ? []
              : [
                  BoxShadow(
                    color: colors.primary.withValues(alpha: 0.35),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              hasOutOfStock
                  ? Icons.lock_outline_rounded
                  : Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(width: AppSizes.w8),
            Text(
              hasOutOfStock ? s.cartCheckoutBlockedLabel : s.cartCheckoutLabel,
              style: AppTextStyles.semiBold15.copyWith(color: Colors.white),
            ),
            if (!hasOutOfStock) ...[
              SizedBox(width: AppSizes.w6),
              const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 16,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
