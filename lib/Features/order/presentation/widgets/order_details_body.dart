import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_details/order_details_bloc.dart';
import 'package:heka_store/Features/order/presentation/blocs/my_orders/my_orders_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/generated/l10n.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        title: Text(
          s.orderDetailsTitle,
          style: AppTextStyles.bold18.copyWith(color: colors.textPrimary),
        ),
      ),
      body: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return const _LoadingSkeleton();

          if (state.error != null || state.order == null) {
            return _ErrorState(
              message: state.error?.serverMessage ?? s.myOrdersGenericError,
              onRetry: () => context.read<OrderDetailsBloc>().add(
                OrderDetailsEvent.loaded(orderId: state.order?.id ?? 0),
              ),
            );
          }

          final order = state.order!;
          final status = _OrderStatus.fromStatusId(order.statusId, context);

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.h16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Status banner ──────────────────────────────────────
                _StatusBanner(status: status, order: order),
                SizedBox(height: AppSizes.h16),

                // ── Products ───────────────────────────────────────────
                _SectionCard(
                  title: s.orderDetailsProducts,
                  child: Column(
                    children: order.items
                        .map((item) => _ProductRow(item: item))
                        .toList(),
                  ),
                ),
                SizedBox(height: AppSizes.h12),

                // ── Price breakdown ────────────────────────────────────
                _SectionCard(
                  title: s.orderDetailsPriceSummary,
                  child: _PriceSummary(order: order),
                ),
                SizedBox(height: AppSizes.h12),

                // ── Shipping info ──────────────────────────────────────
                _SectionCard(
                  title: s.orderDetailsShipping,
                  child: _ShippingInfo(order: order),
                ),
                SizedBox(height: AppSizes.h12),

                // ── Payment info ───────────────────────────────────────
                _SectionCard(
                  title: s.orderDetailsPayment,
                  child: _PaymentInfo(order: order),
                ),

                SizedBox(height: AppSizes.h32),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ── Status banner ─────────────────────────────────────────────────────────────

class _StatusBanner extends StatelessWidget {
  final _OrderStatus status;
  final OrderDetailsModel order;

  const _StatusBanner({required this.status, required this.order});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Container(height: 4, color: status.accentColor),
          Padding(
            padding: EdgeInsets.all(AppSizes.w14),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: status.bgColor,
                    borderRadius: BorderRadius.circular(AppSizes.r12),
                  ),
                  child: Icon(
                    status.icon,
                    color: status.dotColor,
                    size: AppSizes.sp20,
                  ),
                ),
                SizedBox(width: AppSizes.w12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        status.label,
                        style: AppTextStyles.semiBold15.copyWith(
                          color: status.textColor,
                        ),
                      ),
                      SizedBox(height: AppSizes.h2),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(text: order.orderNumber),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(S.of(context).orderDetailsCopied),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              order.orderNumber,
                              style: AppTextStyles.regular11.copyWith(
                                color: colors.textHint,
                                letterSpacing: 0.3,
                              ),
                            ),
                            SizedBox(width: AppSizes.w4),
                            Icon(
                              Icons.copy_rounded,
                              size: AppSizes.sp11,
                              color: colors.textHint,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  _formatDate(order.orderDate),
                  style: AppTextStyles.regular11.copyWith(
                    color: colors.textHint,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(String iso) {
    try {
      final dt = DateTime.parse(iso);
      const months = [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec',
      ];
      return '${months[dt.month - 1]} ${dt.day}, ${dt.year}';
    } catch (_) {
      return iso;
    }
  }
}

// ── Section card ──────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border),
      ),
      padding: EdgeInsets.all(AppSizes.w14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.semiBold13.copyWith(color: colors.textPrimary),
          ),
          SizedBox(height: AppSizes.h12),
          Divider(color: colors.divider, height: 1),
          SizedBox(height: AppSizes.h12),
          child,
        ],
      ),
    );
  }
}

// ── Product row ───────────────────────────────────────────────────────────────

class _ProductRow extends StatelessWidget {
  final OrderItemModel item;
  const _ProductRow({required this.item});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.h10),
      child: Row(
        children: [
          // Product image
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.r8),
            child: SizedBox(
              width: AppSizes.w64,
              height: AppSizes.w64,
              child: CachedImage(
                url: item.productImage,
                fallback: Container(color: colors.primarySoft),
              ),
            ),
          ),
          SizedBox(width: AppSizes.w10),

          // Name + variant
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productNameEn,
                  style: AppTextStyles.semiBold13.copyWith(
                    color: colors.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (item.variantValue != null &&
                    item.variantValue!.isNotEmpty) ...[
                  SizedBox(height: AppSizes.h4),
                  Row(
                    children: [
                      if (item.variantColorHex != null &&
                          item.variantColorHex!.isNotEmpty)
                        Container(
                          width: 10,
                          height: 10,
                          margin: EdgeInsets.only(right: AppSizes.w4),
                          decoration: BoxDecoration(
                            color: _hexColor(item.variantColorHex!),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: colors.border,
                              width: 0.5,
                            ),
                          ),
                        ),
                      Text(
                        '${item.variantTypeName}: ${item.variantValue}',
                        style: AppTextStyles.regular11.copyWith(
                          color: colors.textHint,
                        ),
                      ),
                    ],
                  ),
                ],
                SizedBox(height: AppSizes.h6),
                Row(
                  children: [
                    // Qty badge
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: colors.primarySoft,
                        borderRadius: BorderRadius.circular(AppSizes.r4),
                      ),
                      child: Text(
                        'x${item.quantity}',
                        style: AppTextStyles.semiBold11.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'EGP ${item.totalPrice.toStringAsFixed(2)}',
                      style: AppTextStyles.semiBold13.copyWith(
                        color: colors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _hexColor(String hex) {
    try {
      final clean = hex.replaceAll('#', '');
      return Color(int.parse('FF$clean', radix: 16));
    } catch (_) {
      return Colors.grey;
    }
  }
}

// ── Price summary ─────────────────────────────────────────────────────────────

class _PriceSummary extends StatelessWidget {
  final OrderDetailsModel order;
  const _PriceSummary({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Column(
      children: [
        _PriceRow(
          label: s.orderDetailsSubtotal,
          value: 'EGP ${order.subTotal.toStringAsFixed(2)}',
          colors: colors,
        ),
        SizedBox(height: AppSizes.h8),
        _PriceRow(
          label: s.orderDetailsShippingCost,
          value: 'EGP ${order.shippingCost.toStringAsFixed(2)}',
          colors: colors,
        ),
        SizedBox(height: AppSizes.h10),
        Divider(color: colors.divider, height: 1),
        SizedBox(height: AppSizes.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              s.orderDetailsTotal,
              style: AppTextStyles.semiBold14.copyWith(
                color: colors.textPrimary,
              ),
            ),
            Text(
              'EGP ${order.totalAmount.toStringAsFixed(2)}',
              style: AppTextStyles.bold16.copyWith(color: colors.primary),
            ),
          ],
        ),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label, value;
  final dynamic colors;

  const _PriceRow({
    required this.label,
    required this.value,
    required this.colors,
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
          style: AppTextStyles.semiBold13.copyWith(color: colors.textPrimary),
        ),
      ],
    );
  }
}

// ── Shipping info ─────────────────────────────────────────────────────────────

class _ShippingInfo extends StatelessWidget {
  final OrderDetailsModel order;
  const _ShippingInfo({required this.order});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Column(
      children: [
        _InfoRow(
          icon: Icons.person_outline_rounded,
          value: '${order.shippingFirstName} ${order.shippingLastName}',
          colors: colors,
        ),
        SizedBox(height: AppSizes.h10),
        _InfoRow(
          icon: Icons.phone_outlined,
          value: order.shippingPhone,
          colors: colors,
        ),
        SizedBox(height: AppSizes.h10),
        _InfoRow(
          icon: Icons.location_on_outlined,
          value: order.shippingAddress,
          colors: colors,
        ),
        if (order.notes != null && order.notes!.isNotEmpty) ...[
          SizedBox(height: AppSizes.h10),
          _InfoRow(
            icon: Icons.sticky_note_2_outlined,
            value: order.notes!,
            colors: colors,
          ),
        ],
      ],
    );
  }
}

// ── Payment info ──────────────────────────────────────────────────────────────

class _PaymentInfo extends StatelessWidget {
  final OrderDetailsModel order;
  const _PaymentInfo({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Row(
      children: [
        Expanded(
          // ← add this
          child: _InfoRow(
            icon: Icons.payment_outlined,
            value: order.paymentMethod,
            colors: colors,
          ),
        ), // ← close Expanded
        SizedBox(width: AppSizes.w8), // optional breathing room
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w10,
            vertical: AppSizes.h4,
          ),
          decoration: BoxDecoration(
            color: order.paymentStatus == 'Paid'
                ? Colors.green.shade50
                : Colors.orange.shade50,
            borderRadius: BorderRadius.circular(AppSizes.r20),
          ),
          child: Text(
            order.paymentStatus,
            style: AppTextStyles.semiBold11.copyWith(
              color: order.paymentStatus == 'Paid'
                  ? Colors.green.shade700
                  : Colors.orange.shade700,
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String value;
  final dynamic colors;

  const _InfoRow({
    required this.icon,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: AppSizes.sp16, color: colors.primary),
        SizedBox(width: AppSizes.w8),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.regular13.copyWith(color: colors.textPrimary),
          ),
        ),
      ],
    );
  }
}

// ── Error state ───────────────────────────────────────────────────────────────

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off_rounded, size: 56, color: colors.textHint),
            SizedBox(height: AppSizes.h16),
            Text(
              s.myOrdersLoadError,
              style: AppTextStyles.semiBold16.copyWith(
                color: colors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              style: AppTextStyles.regular13.copyWith(color: colors.textHint),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(s.addressRetry),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Loading skeleton ──────────────────────────────────────────────────────────

class _LoadingSkeleton extends StatelessWidget {
  const _LoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        children: List.generate(
          4,
          (_) => Container(
            margin: EdgeInsets.only(bottom: AppSizes.h12),
            height: 120,
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(AppSizes.r16),
              border: Border.all(color: colors.border),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Order status config (reused from my orders) ───────────────────────────────

class _OrderStatus {
  final String label;
  final Color bgColor;
  final Color dotColor;
  final Color textColor;
  final Color accentColor;
  final IconData icon;

  const _OrderStatus({
    required this.label,
    required this.bgColor,
    required this.dotColor,
    required this.textColor,
    required this.accentColor,
    required this.icon,
  });

  static _OrderStatus fromStatusId(int statusId, BuildContext context) {
    final s = S.of(context);
    switch (statusId) {
      case 0:
      case 1:
        return _OrderStatus(
          label: s.myOrdersStatusPending,
          bgColor: Colors.orange.shade50,
          dotColor: Colors.orange.shade400,
          textColor: Colors.orange.shade700,
          accentColor: Colors.orange.shade400,
          icon: Icons.access_time_rounded,
        );
      case 2:
        return _OrderStatus(
          label: s.myOrdersStatusConfirmed,
          bgColor: Colors.blue.shade50,
          dotColor: Colors.blue.shade400,
          textColor: Colors.blue.shade700,
          accentColor: Colors.blue.shade400,
          icon: Icons.check_circle_outline_rounded,
        );
      case 3:
        return _OrderStatus(
          label: s.myOrdersStatusProcessing,
          bgColor: Colors.purple.shade50,
          dotColor: Colors.purple.shade400,
          textColor: Colors.purple.shade700,
          accentColor: Colors.purple.shade400,
          icon: Icons.settings_outlined,
        );
      case 4:
        return _OrderStatus(
          label: s.myOrdersStatusInTransit,
          bgColor: Colors.indigo.shade50,
          dotColor: Colors.indigo.shade400,
          textColor: Colors.indigo.shade700,
          accentColor: Colors.indigo.shade400,
          icon: Icons.local_shipping_outlined,
        );
      case 5:
        return _OrderStatus(
          label: s.myOrdersStatusDelivered,
          bgColor: Colors.green.shade50,
          dotColor: Colors.green.shade400,
          textColor: Colors.green.shade700,
          accentColor: Colors.green.shade400,
          icon: Icons.inventory_2_outlined,
        );
      case 6:
        return _OrderStatus(
          label: s.myOrdersStatusCancelled,
          bgColor: Colors.red.shade50,
          dotColor: Colors.red.shade300,
          textColor: Colors.red.shade600,
          accentColor: Colors.red.shade400,
          icon: Icons.cancel_outlined,
        );
      default:
        return _OrderStatus(
          label: s.myOrdersStatusUnknown,
          bgColor: Colors.grey.shade100,
          dotColor: Colors.grey.shade400,
          textColor: Colors.grey.shade600,
          accentColor: Colors.grey.shade300,
          icon: Icons.help_outline_rounded,
        );
    }
  }
}
