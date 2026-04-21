import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:heka_store/Features/order/data/models/order_tracking.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_tracking/order_tracking_cubit.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_tracking/order_tracking_state.dart';
import 'package:heka_store/Features/order/presentation/widgets/order_time_line.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import 'package:latlong2/latlong.dart';

// ── Order status helper ───────────────────────────────────────────────────────
class _OrderStatusHelper {
  static const String _pending    = 'pending';
  static const String _confirmed  = 'confirmed';
  static const String _processing = 'processing';   // was 'preparing'
  static const String _shipped    = 'shipped';       // was 'on the way'
  static const String _delivered  = 'delivered';
  static const String _cancelled  = 'cancelled';
  static const String _returned   = 'returned';      // ← new

  static Color color(String status) {
    switch (status.toLowerCase()) {
      case _pending:    return const Color(0xFFF59E0B);
      case _confirmed:  return const Color(0xFF3B82F6);
      case _processing: return const Color(0xFF8B5CF6);
      case _shipped:    return const Color(0xFF14B8A6);
      case _delivered:  return const Color(0xFF22C55E);
      case _cancelled:  return const Color(0xFFEF4444);
      case _returned:   return const Color(0xFFF97316);  // orange
      default:          return const Color(0xFF9CA3AF);
    }
  }

  static IconData icon(String status) {
    switch (status.toLowerCase()) {
      case _pending:    return Icons.hourglass_empty_rounded;
      case _confirmed:  return Icons.check_circle_outline_rounded;
      case _processing: return Icons.restaurant_rounded;
      case _shipped:    return Icons.local_shipping_rounded;     // was delivery_dining
      case _delivered:  return Icons.done_all_rounded;
      case _cancelled:  return Icons.cancel_outlined;
      case _returned:   return Icons.assignment_return_rounded;  // ← new
      default:          return Icons.help_outline_rounded;
    }
  }

  static String label(String status, S s) {
    switch (status.toLowerCase()) {
      case _pending:    return s.statusPending;
      case _confirmed:  return s.statusConfirmed;
      case _processing: return s.statusProcessing;   // was statusPreparing
      case _shipped:    return s.statusShipped;       // was statusOnTheWay
      case _delivered:  return s.statusDelivered;
      case _cancelled:  return s.statusCancelled;
      case _returned:   return s.statusReturned;      // ← new
      default:          return s.statusUnknown;
    }
  }

  static String description(String status, S s) {
    switch (status.toLowerCase()) {
      case _pending:    return s.statusDescPending;
      case _confirmed:  return s.statusDescConfirmed;
      case _processing: return s.statusDescProcessing;
      case _shipped:    return s.statusDescShipped;
      case _delivered:  return s.statusDescDelivered;
      case _cancelled:  return s.statusDescCancelled;
      case _returned:   return s.statusDescReturned;
      default:          return '';
    }
  }
}

// ── Screen ────────────────────────────────────────────────────────────────────

class OrderTrackingScreen extends StatelessWidget {
  final String? initialOrderNumber;

  const OrderTrackingScreen({super.key, this.initialOrderNumber});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<OrderTrackingCubit>(),
      child: _OrderTrackingView(initialOrderNumber: initialOrderNumber),
    );
  }
}

// ── View ──────────────────────────────────────────────────────────────────────

class _OrderTrackingView extends StatefulWidget {
  final String? initialOrderNumber;
  const _OrderTrackingView({this.initialOrderNumber});

  @override
  State<_OrderTrackingView> createState() => _OrderTrackingViewState();
}

class _OrderTrackingViewState extends State<_OrderTrackingView> {
  late final TextEditingController _textController;

  bool get _isReadOnly => widget.initialOrderNumber != null;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: widget.initialOrderNumber ?? '',
    );

    if (_isReadOnly) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<OrderTrackingCubit>().trackOrder(
          widget.initialOrderNumber!,
        );
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _submit() {
    final value = _textController.text.trim();
    if (value.isNotEmpty) {
      context.read<OrderTrackingCubit>().trackOrder(value);
    }
  }

  void _copyOrderNumber() {
    final value = _textController.text.trim();
    if (value.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: value));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).orderNumberCopied),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        title: Text(s.trackOrder),
        centerTitle: false,
        actions: [
          BlocBuilder<OrderTrackingCubit, OrderTrackingState>(
            buildWhen: (prev, curr) => prev.runtimeType != curr.runtimeType,
            builder: (context, state) {
              if (state is! OrderTrackingLoaded) return const SizedBox.shrink();
              return IconButton(
                icon: const Icon(Icons.refresh_rounded),
                tooltip: s.refresh,
                onPressed: () => context.read<OrderTrackingCubit>().refresh(
                  _textController.text.trim(),
                ),
              );
            },
          ),
          SizedBox(width: AppSizes.w4),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ── Search / Display bar ───────────────────────────────────
            Padding(
              padding: EdgeInsets.fromLTRB(
                AppSizes.w16,
                AppSizes.h12,
                AppSizes.w16,
                AppSizes.h8,
              ),
              child: _isReadOnly
                  ? _ReadOnlyOrderBar(
                      orderNumber: widget.initialOrderNumber!,
                      onCopy: _copyOrderNumber,
                    )
                  : _SearchBar(controller: _textController, onSubmit: _submit),
            ),

            // ── Body ──────────────────────────────────────────────────
            Expanded(
              child: BlocBuilder<OrderTrackingCubit, OrderTrackingState>(
                builder: (context, state) {
                  return switch (state) {
                    OrderTrackingInitial() => _EmptyState(),
                    OrderTrackingLoading() => _LoadingState(),
                    OrderTrackingError(:final message) => _ErrorState(
                      message: message,
                      onRetry: _submit,
                    ),
                    OrderTrackingLoaded(:final order) => _LoadedBody(
                      order: order,
                    ),
                    _ => _EmptyState(),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Read-only order bar ───────────────────────────────────────────────────────

class _ReadOnlyOrderBar extends StatelessWidget {
  final String orderNumber;
  final VoidCallback onCopy;

  const _ReadOnlyOrderBar({required this.orderNumber, required this.onCopy});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h12,
      ),
      decoration: BoxDecoration(
        color: colors.primarySoft,
        borderRadius: BorderRadius.circular(AppSizes.r14),
        border: Border.all(color: colors.primary.withOpacity(0.25)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(AppSizes.w8),
            decoration: BoxDecoration(
              color: colors.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(AppSizes.r8),
            ),
            child: Icon(
              Icons.receipt_long_rounded,
              size: AppSizes.sp18,
              color: colors.primary,
            ),
          ),
          SizedBox(width: AppSizes.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.orderNumber,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: colors.primary.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: AppSizes.h2),
                Text(
                  orderNumber,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontFamily: 'monospace',
                    color: colors.primary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onCopy,
            icon: Icon(
              Icons.copy_rounded,
              size: AppSizes.sp18,
              color: colors.primary.withOpacity(0.7),
            ),
            tooltip: s.copyOrderNumber,
            style: IconButton.styleFrom(
              backgroundColor: colors.primary.withOpacity(0.08),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Editable search bar ───────────────────────────────────────────────────────

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSubmit;

  const _SearchBar({required this.controller, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) => onSubmit(),
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: AppSizes.sp13,
              color: context.myColors.textPrimary,
            ),
            decoration: InputDecoration(
              hintText: s.enterOrderNumber,
              prefixIcon: Icon(Icons.receipt_long_rounded, size: AppSizes.sp20),
            ),
          ),
        ),
        SizedBox(width: AppSizes.w10),
        BlocBuilder<OrderTrackingCubit, OrderTrackingState>(
          buildWhen: (p, c) => p.runtimeType != c.runtimeType,
          builder: (context, state) {
            final loading = state is OrderTrackingLoading;
            return FilledButton(
              onPressed: loading ? null : onSubmit,
              style: FilledButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w20,
                  vertical: AppSizes.h14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.r12),
                ),
              ),
              child: loading
                  ? SizedBox(
                      width: AppSizes.w18,
                      height: AppSizes.h18,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text(s.track),
            );
          },
        ),
      ],
    );
  }
}

// ── Empty state ───────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: AppSizes.w80,
              height: AppSizes.h80,
              decoration: BoxDecoration(
                color: colors.primarySoft,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.local_shipping_outlined,
                size: AppSizes.sp36,
                color: colors.primary,
              ),
            ),
            SizedBox(height: AppSizes.h20),
            Text(
              s.trackYourOrder,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              s.enterOrderNumberToTrack,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Loading state ─────────────────────────────────────────────────────────────

class _LoadingState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: AppSizes.w40,
            height: AppSizes.h40,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: colors.primary,
            ),
          ),
          SizedBox(height: AppSizes.h16),
          Text(
            s.fetchingOrderDetails,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
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
    final colors = context.myColors;
    final s = S.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(AppSizes.w16),
              decoration: BoxDecoration(
                color: colors.error.withOpacity(0.08),
                borderRadius: BorderRadius.circular(AppSizes.r16),
                border: Border.all(color: colors.error.withOpacity(0.25)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(AppSizes.w8),
                    decoration: BoxDecoration(
                      color: colors.error.withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.error_outline_rounded,
                      color: colors.error,
                      size: AppSizes.sp20,
                    ),
                  ),
                  SizedBox(width: AppSizes.w12),
                  Expanded(
                    child: Text(
                      message,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: colors.error),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizes.h16),
            OutlinedButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh_rounded, size: AppSizes.sp18),
              label: Text(s.tryAgain),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w24,
                  vertical: AppSizes.h12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.r12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Loaded body ───────────────────────────────────────────────────────────────

class _LoadedBody extends StatelessWidget {
  final OrderTracking order;
  const _LoadedBody({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final statusColor = _OrderStatusHelper.color(order.status);
    final statusIcon = _OrderStatusHelper.icon(order.status);
    final statusLabel = _OrderStatusHelper.label(order.status, s);
    final statusDesc = _OrderStatusHelper.description(order.status, s);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Status banner ──────────────────────────────────────────────
          _StatusBanner(
            statusLabel: statusLabel,
            statusDesc: statusDesc,
            statusColor: statusColor,
            statusIcon: statusIcon,
          ),

          SizedBox(height: AppSizes.h12),

          // ── Location metric cards ──────────────────────────────────────
          Row(
            children: [
              _MetricCard(
                icon: Icons.location_on_rounded,
                iconColor: Colors.deepOrange,
                label: s.deliveryAddress,
                value: order.hasDeliveryLocation
                    ? '${order.deliveryLatitude!.toStringAsFixed(4)},\n${order.deliveryLongitude!.toStringAsFixed(4)}'
                    : '—',
              ),
              SizedBox(width: AppSizes.w10),
              _MetricCard(
                icon: Icons.delivery_dining_rounded,
                iconColor: Colors.teal,
                label: s.riderLocation,
                value: order.hasCurrentLocation
                    ? '${order.currentLatitude!.toStringAsFixed(4)},\n${order.currentLongitude!.toStringAsFixed(4)}'
                    : s.notAvailableYet,
              ),
            ],
          ),

          SizedBox(height: AppSizes.h12),

          // ── Map ────────────────────────────────────────────────────────
          if (order.hasDeliveryLocation) ...[
            _MapCard(order: order),
            SizedBox(height: AppSizes.h8),
            _MapLegend(order: order),
            SizedBox(height: AppSizes.h12),
          ],

          // ── Timeline ──────────────────────────────────────────────────
          _SectionCard(
            icon: Icons.timeline_rounded,
            title: s.orderProgress,
            child: OrderTimeline(currentStatus: order.status),
          ),

          SizedBox(height: AppSizes.h16),
        ],
      ),
    );
  }
}

// ── Status banner ─────────────────────────────────────────────────────────────

class _StatusBanner extends StatelessWidget {
  final String statusLabel;
  final String statusDesc;
  final Color statusColor;
  final IconData statusIcon;

  const _StatusBanner({
    required this.statusLabel,
    required this.statusDesc,
    required this.statusColor,
    required this.statusIcon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h14,
      ),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.08),
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: statusColor.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(AppSizes.w10),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(statusIcon, color: statusColor, size: AppSizes.sp22),
          ),
          SizedBox(width: AppSizes.w14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.currentStatus,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: colors.textSecondary),
                ),
                SizedBox(height: AppSizes.h2),
                Text(
                  statusLabel,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (statusDesc.isNotEmpty) ...[
                  SizedBox(height: AppSizes.h4),
                  Text(
                    statusDesc,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.textSecondary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          // Live pulse dot
          Container(
            width: AppSizes.w10,
            height: AppSizes.h10,
            decoration: BoxDecoration(
              color: statusColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: statusColor.withOpacity(0.4),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Section card ──────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const _SectionCard({
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.w16),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppSizes.w6),
                decoration: BoxDecoration(
                  color: colors.primarySoft,
                  borderRadius: BorderRadius.circular(AppSizes.r8),
                ),
                child: Icon(icon, size: AppSizes.sp16, color: colors.primary),
              ),
              SizedBox(width: AppSizes.w8),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(letterSpacing: 0.5),
              ),
            ],
          ),
          SizedBox(height: AppSizes.h16),
          child,
        ],
      ),
    );
  }
}

// ── Metric card ───────────────────────────────────────────────────────────────

class _MetricCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color iconColor;

  const _MetricCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(AppSizes.w12),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(AppSizes.r14),
          border: Border.all(color: colors.border.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(AppSizes.w6),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Icon(icon, size: AppSizes.sp16, color: iconColor),
            ),
            SizedBox(height: AppSizes.h8),
            Text(label, style: Theme.of(context).textTheme.labelSmall),
            SizedBox(height: AppSizes.h4),
            Text(
              value,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontFamily: 'monospace',
                fontWeight: FontWeight.w600,
                color: colors.textPrimary,
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Map legend ────────────────────────────────────────────────────────────────

class _MapLegend extends StatelessWidget {
  final OrderTracking order;
  const _MapLegend({required this.order});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w14,
        vertical: AppSizes.h10,
      ),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: colors.border.withOpacity(0.4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _LegendItem(
            icon: Icons.location_pin,
            color: Colors.deepOrange,
            label: s.deliveryAddress,
          ),
          if (order.hasVendorLocation)
            _LegendItem(
              icon: Icons.store_rounded,
              color: Colors.deepPurple,
              label: s.vendor,
            ),
          if (order.hasCurrentLocation)
            _LegendItem(
              icon: Icons.delivery_dining_rounded,
              color: Colors.teal,
              label: s.rider,
            ),
        ],
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _LegendItem({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: AppSizes.sp16),
        SizedBox(width: AppSizes.w4),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: context.myColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

// ── Map card ──────────────────────────────────────────────────────────────────

class _MapCard extends StatelessWidget {
  final OrderTracking order;
  const _MapCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    final markers = <Marker>[
      Marker(
        point: LatLng(order.deliveryLatitude!, order.deliveryLongitude!),
        width: AppSizes.w36,
        height: AppSizes.h36,
        child: Tooltip(
          message: s.deliveryAddress,
          child: Icon(
            Icons.location_pin,
            color: Colors.deepOrange,
            size: AppSizes.sp36,
          ),
        ),
      ),
      if (order.hasVendorLocation)
        Marker(
          point: LatLng(order.vendorLatitude!, order.vendorLongitude!),
          width: AppSizes.w32,
          height: AppSizes.h32,
          child: Tooltip(
            message: s.vendor,
            child: Icon(
              Icons.store_rounded,
              color: Colors.deepPurple,
              size: AppSizes.sp32,
            ),
          ),
        ),
      if (order.hasCurrentLocation)
        Marker(
          point: LatLng(order.currentLatitude!, order.currentLongitude!),
          width: AppSizes.w32,
          height: AppSizes.h32,
          child: Tooltip(
            message: s.rider,
            child: Icon(
              Icons.delivery_dining_rounded,
              color: Colors.teal,
              size: AppSizes.sp32,
            ),
          ),
        ),
    ];

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.r16),
      child: Container(
        height: AppSizes.h260,
        decoration: BoxDecoration(
          border: Border.all(color: colors.border.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(AppSizes.r16),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(
              order.deliveryLatitude!,
              order.deliveryLongitude!,
            ),
            initialZoom: 13,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.heka_store.app',
            ),
            MarkerLayer(markers: markers),
          ],
        ),
      ),
    );
  }
}
