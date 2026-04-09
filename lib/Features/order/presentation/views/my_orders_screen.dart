import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/my_orders/my_orders_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCtrl;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: 2, vsync: this);
    context.read<MyOrdersBloc>().add(const MyOrdersEvent.started());
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

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
          s.myOrdersTitle,
          style: AppTextStyles.bold18.copyWith(color: colors.textPrimary),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: BlocBuilder<MyOrdersBloc, MyOrdersState>(
            builder: (context, state) => _OrdersTabBar(
              controller: _tabCtrl,
              ongoingCount: state.ongoingOrders.length,
              completedCount: state.completedOrders.length,
            ),
          ),
        ),
      ),
      body: BlocBuilder<MyOrdersBloc, MyOrdersState>(
        builder: (context, state) {
          if (state.isLoading) return _LoadingSkeleton();

          if (state.error != null && state.orders.isEmpty) {
            return _ErrorState(
              message: state.error!.serverMessage ?? s.myOrdersGenericError,
              onRetry: () => context.read<MyOrdersBloc>().add(
                const MyOrdersEvent.started(),
              ),
            );
          }

          return TabBarView(
            controller: _tabCtrl,
            children: [
              _OrdersList(
                orders: state.ongoingOrders,
                emptyIcon: Icons.inventory_2_outlined,
                emptyTitle: s.myOrdersNoOngoing,
                emptySubtitle: s.myOrdersNoOngoingSubtitle,
              ),
              _OrdersList(
                orders: state.completedOrders,
                emptyIcon: Icons.check_circle_outline_rounded,
                emptyTitle: s.myOrdersNoCompleted,
                emptySubtitle: s.myOrdersNoCompletedSubtitle,
              ),
            ],
          );
        },
      ),
    );
  }
}

// ── Tab bar with counts ───────────────────────────────────────────────────────
class _OrdersTabBar extends StatelessWidget {
  final TabController controller;
  final int ongoingCount;
  final int completedCount;

  const _OrdersTabBar({
    required this.controller,
    required this.ongoingCount,
    required this.completedCount,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      color: colors.surface,
      child: TabBar(
        controller: controller,
        labelColor: colors.primary,
        unselectedLabelColor: colors.textHint,
        indicatorColor: colors.primary,
        indicatorWeight: 2.5,
        labelStyle: AppTextStyles.semiBold14,
        unselectedLabelStyle: AppTextStyles.regular14,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(s.myOrdersTabOngoing),
                if (ongoingCount > 0) ...[
                  SizedBox(width: AppSizes.w6),
                  _CountBadge(count: ongoingCount, active: true),
                ],
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(s.myOrdersTabCompleted),
                if (completedCount > 0) ...[
                  SizedBox(width: AppSizes.w6),
                  _CountBadge(count: completedCount, active: false),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  final int count;
  final bool active;
  const _CountBadge({required this.count, required this.active});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        color: active ? colors.primary.withValues(alpha: 0.12) : colors.border,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$count',
        style: AppTextStyles.semiBold10.copyWith(
          color: active ? colors.primary : colors.textHint,
        ),
      ),
    );
  }
}

// ── Orders list ───────────────────────────────────────────────────────────────
class _OrdersList extends StatelessWidget {
  final List<MyOrderModel> orders;
  final IconData emptyIcon;
  final String emptyTitle;
  final String emptySubtitle;

  const _OrdersList({
    required this.orders,
    required this.emptyIcon,
    required this.emptyTitle,
    required this.emptySubtitle,
  });

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return _EmptyState(
        icon: emptyIcon,
        title: emptyTitle,
        subtitle: emptySubtitle,
      );
    }

    return RefreshIndicator(
      onRefresh: () async =>
          context.read<MyOrdersBloc>().add(const MyOrdersEvent.refreshed()),
      child: ListView.separated(
        padding: EdgeInsets.fromLTRB(
          AppSizes.w16,
          AppSizes.h16,
          AppSizes.w16,
          AppSizes.h32,
        ),
        itemCount: orders.length,
        separatorBuilder: (_, __) => SizedBox(height: AppSizes.h10),
        itemBuilder: (_, i) => _OrderTile(order: orders[i]),
      ),
    );
  }
}

// ── Order tile ────────────────────────────────────────────────────────────────
class _OrderTile extends StatelessWidget {
  final MyOrderModel order;
  const _OrderTile({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final status = _OrderStatus.fromStatusId(order.statusId);

    return Container(
      padding: EdgeInsets.all(AppSizes.w14),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header: order number + date ─────────────────────────────
          Row(
            children: [
              Expanded(
                child: Text(
                  order.orderNumber,
                  style: AppTextStyles.semiBold13.copyWith(
                    color: colors.textPrimary,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              Text(
                _formatDate(order.orderDate),
                style: AppTextStyles.regular11.copyWith(color: colors.textHint),
              ),
            ],
          ),

          SizedBox(height: AppSizes.h10),
          Divider(color: colors.divider, height: 1),
          SizedBox(height: AppSizes.h10),

          // ── Middle row: vendor + items + total ──────────────────────
          Row(
            children: [
              // Vendor icon
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: colors.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(AppSizes.r8),
                ),
                child: Icon(
                  Icons.storefront_outlined,
                  size: AppSizes.sp16,
                  color: colors.primary,
                ),
              ),
              SizedBox(width: AppSizes.w10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.vendorName,
                      style: AppTextStyles.semiBold13.copyWith(
                        color: colors.textPrimary,
                      ),
                    ),
                    Text(
                      s.myOrdersItemCount(order.itemsCount),
                      style: AppTextStyles.regular11.copyWith(
                        color: colors.textHint,
                      ),
                    ),
                  ],
                ),
              ),
              // Total
              Text(
                'EGP ${order.totalAmount.toStringAsFixed(2)}',
                style: AppTextStyles.bold14.copyWith(color: colors.textPrimary),
              ),
            ],
          ),

          SizedBox(height: AppSizes.h12),

          // ── Footer: status chip + track button ──────────────────────
          Row(
            children: [
              _StatusChip(status: status),
              const Spacer(),
              if (order.isOngoing) _TrackButton(order: order),
            ],
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

// ── Status chip ───────────────────────────────────────────────────────────────
class _StatusChip extends StatelessWidget {
  final _OrderStatus status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w10,
        vertical: AppSizes.h4,
      ),
      decoration: BoxDecoration(
        color: status.bgColor,
        borderRadius: BorderRadius.circular(AppSizes.r20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: status.dotColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: AppSizes.w4),
          Text(
            status.label,
            style: AppTextStyles.semiBold11.copyWith(color: status.textColor),
          ),
        ],
      ),
    );
  }
}

// ── Track button ──────────────────────────────────────────────────────────────
class _TrackButton extends StatelessWidget {
  final MyOrderModel order;
  const _TrackButton({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return GestureDetector(
      onTap: () {
        // TODO: navigate to order tracking screen
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (_) => OrderTrackingScreen(orderId: order.id),
        // ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w12,
          vertical: AppSizes.h6,
        ),
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(AppSizes.r8),
          boxShadow: [
            BoxShadow(
              color: colors.primary.withValues(alpha: 0.3),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_shipping_outlined,
              size: AppSizes.sp13,
              color: Colors.white,
            ),
            SizedBox(width: AppSizes.w4),
            Text(
              s.myOrdersTrackOrder,
              style: AppTextStyles.semiBold11.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Empty state ───────────────────────────────────────────────────────────────
class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const _EmptyState({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: colors.surface,
                shape: BoxShape.circle,
                border: Border.all(color: colors.border),
              ),
              child: Icon(icon, size: 36, color: colors.textHint),
            ),
            SizedBox(height: AppSizes.h20),
            Text(
              title,
              style: AppTextStyles.semiBold16.copyWith(
                color: colors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              subtitle,
              style: AppTextStyles.regular13.copyWith(
                color: colors.textHint,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
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
class _LoadingSkeleton extends StatefulWidget {
  @override
  State<_LoadingSkeleton> createState() => _LoadingSkeletonState();
}

class _LoadingSkeletonState extends State<_LoadingSkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(
        AppSizes.w16,
        AppSizes.h16,
        AppSizes.w16,
        AppSizes.h32,
      ),
      itemCount: 5,
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.h10),
      itemBuilder: (_, __) => AnimatedBuilder(
        animation: _anim,
        builder: (_, __) {
          final colors = context.myColors;
          final shimmer = Color.lerp(
            colors.surface,
            colors.border,
            _anim.value * 0.5,
          )!;
          return Container(
            height: context.height * .2,
            padding: EdgeInsets.all(AppSizes.w14),
            decoration: BoxDecoration(
              color: shimmer,
              borderRadius: BorderRadius.circular(AppSizes.r16),
              border: Border.all(color: colors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _ShimmerBox(w: 160, h: 12, color: colors.border),
                    _ShimmerBox(w: 70, h: 10, color: colors.border),
                  ],
                ),
                SizedBox(height: AppSizes.h12),
                _ShimmerBox(w: double.infinity, h: 1, color: colors.border),
                SizedBox(height: AppSizes.h12),
                Row(
                  children: [
                    _ShimmerBox(w: 32, h: 32, color: colors.border, radius: 8),
                    SizedBox(width: AppSizes.w10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ShimmerBox(w: 120, h: 11, color: colors.border),
                          SizedBox(height: AppSizes.h6),
                          _ShimmerBox(w: 70, h: 9, color: colors.border),
                        ],
                      ),
                    ),
                    _ShimmerBox(w: 80, h: 14, color: colors.border),
                  ],
                ),
                SizedBox(height: AppSizes.h12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _ShimmerBox(w: 80, h: 24, color: colors.border, radius: 20),
                    _ShimmerBox(w: 90, h: 28, color: colors.border, radius: 8),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ShimmerBox extends StatelessWidget {
  final double w, h;
  final Color color;
  final double radius;
  const _ShimmerBox({
    required this.w,
    required this.h,
    required this.color,
    this.radius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w == double.infinity ? null : w,
      height: h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
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

  const _OrderStatus({
    required this.label,
    required this.bgColor,
    required this.dotColor,
    required this.textColor,
  });

  static _OrderStatus fromStatusId(int statusId) {
    switch (statusId) {
      case 0:
      case 1:
        return _OrderStatus(
          label: 'Pending',
          bgColor: Colors.orange.shade50,
          dotColor: Colors.orange.shade400,
          textColor: Colors.orange.shade700,
        );
      case 2:
        return _OrderStatus(
          label: 'Confirmed',
          bgColor: Colors.blue.shade50,
          dotColor: Colors.blue.shade400,
          textColor: Colors.blue.shade700,
        );
      case 3:
        return _OrderStatus(
          label: 'Processing',
          bgColor: Colors.purple.shade50,
          dotColor: Colors.purple.shade400,
          textColor: Colors.purple.shade700,
        );
      case 4:
        return _OrderStatus(
          label: 'In Transit',
          bgColor: Colors.indigo.shade50,
          dotColor: Colors.indigo.shade400,
          textColor: Colors.indigo.shade700,
        );
      case 5:
        return _OrderStatus(
          label: 'Delivered',
          bgColor: Colors.green.shade50,
          dotColor: Colors.green.shade400,
          textColor: Colors.green.shade700,
        );
      case 6:
        return _OrderStatus(
          label: 'Cancelled',
          bgColor: Colors.red.shade50,
          dotColor: Colors.red.shade300,
          textColor: Colors.red.shade600,
        );
      default:
        return _OrderStatus(
          label: 'Unknown',
          bgColor: Colors.grey.shade100,
          dotColor: Colors.grey.shade400,
          textColor: Colors.grey.shade600,
        );
    }
  }
}
