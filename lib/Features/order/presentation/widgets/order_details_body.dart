import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_details/order_details_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/generated/l10n.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      // uses scaffoldBackgroundColor from AppTheme automatically
      appBar: AppBar(
        // uses appBarTheme from AppTheme automatically
        title: Text(s.orderDetailsTitle),
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
                _StatusBanner(status: status, order: order),
                SizedBox(height: AppSizes.h16),
                _SectionCard(
                  title: s.orderDetailsProducts,
                  child: Column(
                    children: order.items
                        .map((item) => _ProductRow(item: item))
                        .toList(),
                  ),
                ),
                SizedBox(height: AppSizes.h12),
                _SectionCard(
                  title: s.orderDetailsPriceSummary,
                  child: _PriceSummary(order: order),
                ),
                SizedBox(height: AppSizes.h12),
                _SectionCard(
                  title: s.orderDetailsShipping,
                  child: _ShippingInfo(order: order),
                ),
                SizedBox(height: AppSizes.h12),
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
    final theme = Theme.of(context);
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          // accent stripe
          Container(height: AppSizes.h4, color: status.accentColor),
          Padding(
            padding: EdgeInsets.all(AppSizes.w14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // status icon
                Container(
                  width: AppSizes.w44,
                  height: AppSizes.w44,
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

                // label + order number
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        status.label,
                        style: theme.textTheme.titleMedium?.copyWith(
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                order.orderNumber,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colors.textHint,
                                  letterSpacing: 0.3,
                                ),
                                overflow: TextOverflow.ellipsis,
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

                SizedBox(width: AppSizes.w8),

                // date — never wraps
                Text(
                  _formatDate(order.orderDate),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colors.textHint,
                  ),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
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
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
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
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      padding: EdgeInsets.all(AppSizes.w14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.labelLarge),
          SizedBox(height: AppSizes.h12),
          Divider(
            color: theme.dividerColor,
            height: 1,
            thickness: theme.dividerTheme.thickness,
          ),
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
    final theme = Theme.of(context);
    final colors = context.myColors;

    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.h10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product image — fixed, never shrinks
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

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productNameEn,
                  style: theme.textTheme.titleSmall,
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
                          width: AppSizes.w10,
                          height: AppSizes.w10,
                          margin: EdgeInsets.only(right: AppSizes.w4),
                          decoration: BoxDecoration(
                            color: _hexColor(item.variantColorHex!),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: theme.colorScheme.outline,
                              width: 0.5,
                            ),
                          ),
                        ),
                      // variant text truncates instead of overflowing
                      Flexible(
                        child: Text(
                          '${item.variantTypeName}: ${item.variantValue}',
                          style: theme.textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],

                SizedBox(height: AppSizes.h6),
                Row(
                  children: [
                    // qty badge
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w6,
                        vertical: AppSizes.h2,
                      ),
                      decoration: BoxDecoration(
                        color: colors.primarySoft,
                        borderRadius: BorderRadius.circular(AppSizes.r4),
                      ),
                      child: Text(
                        'x${item.quantity}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    // price never wraps
                    Text(
                      'EGP ${item.totalPrice.toStringAsFixed(2)}',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
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
    final theme = Theme.of(context);

    return Column(
      children: [
        _PriceRow(label: s.orderDetailsSubtotal,
            value: 'EGP ${order.subTotal.toStringAsFixed(2)}'),
        SizedBox(height: AppSizes.h8),
        _PriceRow(label: s.orderDetailsShippingCost,
            value: 'EGP ${order.shippingCost.toStringAsFixed(2)}'),
        SizedBox(height: AppSizes.h10),
        Divider(
          color: theme.dividerColor,
          height: 1,
          thickness: theme.dividerTheme.thickness,
        ),
        SizedBox(height: AppSizes.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(s.orderDetailsTotal, style: theme.textTheme.titleMedium),
            Text(
              'EGP ${order.totalAmount.toStringAsFixed(2)}',
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}

// dead `colors` param removed; label is Flexible so it truncates on small screens
class _PriceRow extends StatelessWidget {
  final String label;
  final String value;

  const _PriceRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            style: theme.textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: AppSizes.w8),
        Text(
          value,
          style: theme.textTheme.labelLarge,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
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
    return Column(
      children: [
        _InfoRow(
          icon: Icons.person_outline_rounded,
          value: '${order.shippingFirstName} ${order.shippingLastName}',
        ),
        SizedBox(height: AppSizes.h10),
        _InfoRow(icon: Icons.phone_outlined, value: order.shippingPhone),
        SizedBox(height: AppSizes.h10),
        _InfoRow(
            icon: Icons.location_on_outlined, value: order.shippingAddress),
        if (order.notes != null && order.notes!.isNotEmpty) ...[
          SizedBox(height: AppSizes.h10),
          _InfoRow(icon: Icons.sticky_note_2_outlined, value: order.notes!),
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
    final theme = Theme.of(context);
    final isPaid = order.paymentStatus == 'Paid';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _InfoRow(
            icon: Icons.payment_outlined,
            value: order.paymentMethod,
          ),
        ),
        SizedBox(width: AppSizes.w8),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w10,
            vertical: AppSizes.h4,
          ),
          decoration: BoxDecoration(
            color: isPaid ? Colors.green.shade50 : Colors.orange.shade50,
            borderRadius: BorderRadius.circular(AppSizes.r20),
          ),
          child: Text(
            order.paymentStatus,
            style: theme.textTheme.labelSmall?.copyWith(
              color: isPaid ? Colors.green.shade700 : Colors.orange.shade700,
              fontWeight: FontWeight.w600,
            ),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}

// dead `colors` param removed; icon aligns to first text baseline
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String value;

  const _InfoRow({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.myColors;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: AppSizes.h2),
          child: Icon(icon, size: AppSizes.sp16, color: colors.primary),
        ),
        SizedBox(width: AppSizes.w8),
        Expanded(
          child: Text(value, style: theme.textTheme.bodyMedium),
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
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_off_rounded,
              size: AppSizes.sp36,
              color: theme.colorScheme.outline,
            ),
            SizedBox(height: AppSizes.h16),
            Text(
              s.myOrdersLoadError,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h24),
            // FilledButton picks up filledButtonTheme from AppTheme automatically
            FilledButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh_rounded, size: AppSizes.sp18),
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
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        children: List.generate(
          4,
          (_) => Container(
            margin: EdgeInsets.only(bottom: AppSizes.h12),
            height: AppSizes.h120,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(AppSizes.r16),
              border: Border.all(color: theme.colorScheme.outline),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Order status config ───────────────────────────────────────────────────────

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