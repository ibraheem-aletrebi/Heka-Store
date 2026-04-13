import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

/// Shown when order creation fails OR when payment is cancelled/failed.
/// Pass [isCancelled] = true for payment-cancelled case (softer messaging).
class OrderFailureScreen extends StatefulWidget {
  final String? errorMessage;
  final bool isCancelled;

  const OrderFailureScreen({
    super.key,
    this.errorMessage,
    this.isCancelled = false,
  });

  @override
  State<OrderFailureScreen> createState() => _OrderFailureScreenState();
}

class _OrderFailureScreenState extends State<OrderFailureScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animCtrl;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _fadeAnim;
  late final Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();
    _animCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    _scaleAnim = CurvedAnimation(
      parent: _animCtrl,
      curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
    );
    _fadeAnim = CurvedAnimation(
      parent: _animCtrl,
      curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
    );
    _slideAnim = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animCtrl,
      curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
    ));
  }

  @override
  void dispose() {
    _animCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final isCancelled = widget.isCancelled;

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: colors.background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
            child: Column(
              children: [
                const Spacer(),

                // ── Icon ──────────────────────────────────────────────────
                ScaleTransition(
                  scale: _scaleAnim,
                  child: _StatusIcon(isCancelled: isCancelled),
                ),

                SizedBox(height: AppSizes.h28),

                // ── Title + subtitle ──────────────────────────────────────
                FadeTransition(
                  opacity: _fadeAnim,
                  child: SlideTransition(
                    position: _slideAnim,
                    child: Column(
                      children: [
                        Text(
                          isCancelled
                              ? s.orderCancelledTitle
                              : s.orderFailedTitle,
                          style: AppTextStyles.bold22
                              .copyWith(color: colors.textPrimary),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: AppSizes.h10),
                        Text(
                          isCancelled
                              ? s.orderCancelledSubtitle
                              : s.orderFailedSubtitle,
                          style: AppTextStyles.regular14.copyWith(
                            color: colors.textSecondary,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Error detail card (only for failures, not cancellations) ──
                if (!isCancelled && widget.errorMessage != null) ...[
                  SizedBox(height: AppSizes.h20),
                  FadeTransition(
                    opacity: _fadeAnim,
                    child: SlideTransition(
                      position: _slideAnim,
                      child: _ErrorDetailCard(
                          message: widget.errorMessage!),
                    ),
                  ),
                ],

                // ── What to do next ───────────────────────────────────────
                SizedBox(height: AppSizes.h28),
                FadeTransition(
                  opacity: _fadeAnim,
                  child: SlideTransition(
                    position: _slideAnim,
                    child: _WhatToDoNext(isCancelled: isCancelled),
                  ),
                ),

                const Spacer(),

                // ── CTAs ──────────────────────────────────────────────────
                FadeTransition(
                  opacity: _fadeAnim,
                  child: _ActionButtons(isCancelled: isCancelled),
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

// ── Status icon ───────────────────────────────────────────────────────────────
class _StatusIcon extends StatelessWidget {
  final bool isCancelled;
  const _StatusIcon({required this.isCancelled});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        color: isCancelled ? Colors.orange.shade50 : Colors.red.shade50,
        shape: BoxShape.circle,
        border: Border.all(
          color: isCancelled ? Colors.orange.shade200 : Colors.red.shade200,
          width: 2,
        ),
      ),
      child: Icon(
        isCancelled
            ? Icons.cancel_outlined
            : Icons.error_outline_rounded,
        color: isCancelled ? Colors.orange.shade500 : Colors.red.shade400,
        size: 48,
      ),
    );
  }
}

// ── Error detail card ─────────────────────────────────────────────────────────
class _ErrorDetailCard extends StatelessWidget {
  final String message;
  const _ErrorDetailCard({required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.w16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: Colors.red.shade100),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline_rounded,
              size: AppSizes.sp16, color: Colors.red.shade400),
          SizedBox(width: AppSizes.w10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.orderFailedErrorLabel,
                  style: AppTextStyles.semiBold12
                      .copyWith(color: Colors.red.shade700),
                ),
                SizedBox(height: AppSizes.h4),
                Text(
                  message,
                  style: AppTextStyles.regular12
                      .copyWith(color: Colors.red.shade600, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── What to do next tips ──────────────────────────────────────────────────────
class _WhatToDoNext extends StatelessWidget {
  final bool isCancelled;
  const _WhatToDoNext({required this.isCancelled});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    final tips = isCancelled
        ? [
            (Icons.shopping_cart_outlined, s.orderCancelledTip1),
            (Icons.access_time_rounded, s.orderCancelledTip2),
          ]
        : [
            (Icons.refresh_rounded, s.orderFailedTip1),
            (Icons.credit_card_outlined, s.orderFailedTip2),
            (Icons.support_agent_outlined, s.orderFailedTip3),
          ];

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.w16),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r14),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.orderFailedWhatNext,
            style: AppTextStyles.semiBold13
                .copyWith(color: colors.textPrimary),
          ),
          SizedBox(height: AppSizes.h12),
          ...tips.map(
            (tip) => Padding(
              padding: EdgeInsets.only(bottom: AppSizes.h10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(tip.$1,
                      size: AppSizes.sp15, color: colors.primary),
                  SizedBox(width: AppSizes.w10),
                  Expanded(
                    child: Text(
                      tip.$2,
                      style: AppTextStyles.regular13
                          .copyWith(color: colors.textSecondary, height: 1.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Action buttons ────────────────────────────────────────────────────────────
class _ActionButtons extends StatelessWidget {
  final bool isCancelled;
  const _ActionButtons({required this.isCancelled});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Column(
      children: [
        // Primary: try again
        SizedBox(
          width: double.infinity,
          height: 52,
          child: FilledButton.icon(
            onPressed: () {
              Navigator.of(context).pop(); // back to checkout
            },
            icon: Icon(
              isCancelled
                  ? Icons.shopping_bag_outlined
                  : Icons.refresh_rounded,
              size: 18,
            ),
            label: Text(
              isCancelled ? s.orderCancelledTryAgain : s.orderFailedRetry,
            ),
          ),
        ),
        SizedBox(height: AppSizes.h12),
        // Secondary: go home
        SizedBox(
          width: double.infinity,
          height: 52,
          child: OutlinedButton(
            onPressed: () {
              Navigator.of(context).popUntil((r) => r.isFirst);
            },
            child: Text(s.orderSuccessBackToHome),
          ),
        ),
      ],
    );
  }
}