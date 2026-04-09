import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/models/order_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/order/order_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class OrderSuccessScreen extends StatefulWidget {
  final OrderModel order;

  const OrderSuccessScreen({super.key, required this.order});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animCtrl;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _animCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();

    _scaleAnim = CurvedAnimation(
      parent: _animCtrl,
      curve: const Interval(0, 0.6, curve: Curves.elasticOut),
    );
    _fadeAnim = CurvedAnimation(
      parent: _animCtrl,
      curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _animCtrl.dispose();
    super.dispose();
  }

  bool get _isCod => widget.order.paymentMethod.toLowerCase().contains('cash');

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return PopScope(
      canPop: false, // prevent back navigation from success
      child: Scaffold(
        backgroundColor: colors.background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
            child: Column(
              children: [
                const Spacer(),

                // ── Animated checkmark ──────────────────────────────────
                ScaleTransition(
                  scale: _scaleAnim,
                  child: Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green.shade200,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green.shade500,
                      size: 56,
                    ),
                  ),
                ),

                SizedBox(height: AppSizes.h24),

                // ── Title & subtitle ────────────────────────────────────
                FadeTransition(
                  opacity: _fadeAnim,
                  child: Column(
                    children: [
                      Text(
                        s.orderSuccessTitle,
                        style: AppTextStyles.bold22.copyWith(
                          color: colors.textPrimary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: AppSizes.h8),
                      Text(
                        _isCod
                            ? s.orderSuccessSubtitleCod
                            : s.orderSuccessSubtitleOnline,
                        style: AppTextStyles.regular14.copyWith(
                          color: colors.textSecondary,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: AppSizes.h32),

                // ── Order summary card ──────────────────────────────────
                FadeTransition(
                  opacity: _fadeAnim,
                  child: _OrderSummaryCard(order: widget.order),
                ),

                const Spacer(),

                // ── CTA buttons ─────────────────────────────────────────
                FadeTransition(
                  opacity: _fadeAnim,
                  child: Column(
                    children: [
                      // Track order
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: FilledButton.icon(
                          onPressed: () {
                            // TODO: navigate to order tracking screen
                          },
                          icon: const Icon(
                            Icons.local_shipping_outlined,
                            size: 18,
                          ),
                          label: Text(s.orderSuccessTrackOrder),
                        ),
                      ),
                      SizedBox(height: AppSizes.h12),
                      // Back to home
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).popUntil((route) => route.isFirst);
                          },
                          child: Text(s.orderSuccessBackToHome),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: AppSizes.h24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Order summary card ────────────────────────────────────────────────────────
class _OrderSummaryCard extends StatelessWidget {
  final OrderModel order;
  const _OrderSummaryCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.w20),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        children: [
          _SummaryRow(
            label: s.orderSuccessOrderNumber,
            value: order.orderNumber,
            highlight: true,
          ),
          Divider(color: colors.divider, height: AppSizes.h24),
          _SummaryRow(
            label: s.orderSuccessPaymentMethod,
            value: order.paymentMethod,
          ),
          SizedBox(height: AppSizes.h10),
          _SummaryRow(
            label: s.orderSuccessTotal,
            value: 'EGP ${order.totalAmount.toStringAsFixed(2)}',
          ),
          SizedBox(height: AppSizes.h10),
          _SummaryRow(
            label: s.orderSuccessStatus,
            value: order.status,
            statusColor: Colors.green.shade600,
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool highlight;
  final Color? statusColor;

  const _SummaryRow({
    required this.label,
    required this.value,
    this.highlight = false,
    this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.regular13.copyWith(color: colors.textHint),
        ),
        Text(
          value,
          style: highlight
              ? AppTextStyles.bold14.copyWith(color: colors.primary)
              : AppTextStyles.semiBold13.copyWith(
                  color: statusColor ?? colors.textPrimary,
                ),
        ),
      ],
    );
  }
}
