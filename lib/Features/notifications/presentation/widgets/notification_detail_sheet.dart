import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import '../../domain/entities/notification_entity.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import 'notification_type_helper.dart';

class NotificationDetailSheet extends StatelessWidget {
  final NotificationEntity notification;

  const NotificationDetailSheet({super.key, required this.notification});

  static void show(BuildContext context, NotificationEntity notification) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => BlocProvider.value(
        value: context.read<NotificationBloc>(),
        child: NotificationDetailSheet(notification: notification),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final n = notification;
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final s = S.of(context);
    final typeColor = NotificationTypeHelper.getColor(n.type);
    final typeIcon = NotificationTypeHelper.getIcon(n.type);
    final lightColor = NotificationTypeHelper.getLightColor(n.type);

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.4,
      maxChildSize: 0.85,
      builder: (_, controller) => Container(
        decoration: BoxDecoration(
          color: isDark ? colors.surface : colors.surface,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSizes.r24 + 4),
          ),
        ),
        child: ListView(
          controller: controller,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + AppSizes.h16,
          ),
          children: [
            // ── Handle ────────────────────────────────────────────
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: AppSizes.h12,
                  bottom: AppSizes.h20,
                ),
                width: AppSizes.w40,
                height: AppSizes.h4,
                decoration: BoxDecoration(
                  color: isDark
                      ? colors.divider.withOpacity(0.3)
                      : colors.divider,
                  borderRadius: BorderRadius.circular(AppSizes.r4 / 2),
                ),
              ),
            ),

            // ── Icon + type row ───────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
              child: Row(
                children: [
                  Container(
                    width: AppSizes.w56,
                    height: AppSizes.h56,
                    decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.circular(AppSizes.r16),
                    ),
                    child: Icon(typeIcon, color: typeColor, size: AppSizes.sp28),
                  ),
                  SizedBox(width: AppSizes.w16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w10,
                          vertical: AppSizes.h4,
                        ),
                        decoration: BoxDecoration(
                          color: lightColor,
                          borderRadius: BorderRadius.circular(AppSizes.r20),
                        ),
                        child: Text(
                          NotificationTypeHelper.getLabel(n.type, context: context),
                          style: TextStyle(
                            fontSize: AppSizes.sp11,
                            fontWeight: FontWeight.w700,
                            color: typeColor,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: AppSizes.h4),
                      Text(
                        timeago.format(n.createdAt, allowFromNow: true),
                        style: TextStyle(
                          fontSize: AppSizes.sp12,
                          color: colors.textHint,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (!n.isRead)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w10,
                        vertical: AppSizes.h4,
                      ),
                      decoration: BoxDecoration(
                        color: colors.error.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppSizes.r20),
                        border: Border.all(
                            color: colors.error.withOpacity(0.3)),
                      ),
                      child: Text(
                        s.unread,
                        style: TextStyle(
                          fontSize: AppSizes.sp11,
                          fontWeight: FontWeight.w700,
                          color: colors.error,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            SizedBox(height: AppSizes.h20),
            Divider(
              color: isDark
                  ? colors.divider.withOpacity(0.2)
                  : colors.background,
              height: 1,
            ),
            SizedBox(height: AppSizes.h20),

            // ── Title ─────────────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
              child: Text(
                n.title,
                style: TextStyle(
                  fontSize: AppSizes.sp20,
                  fontWeight: FontWeight.w800,
                  color: colors.textPrimary,
                  letterSpacing: -0.5,
                  height: 1.3,
                ),
              ),
            ),

            SizedBox(height: AppSizes.h12),

            // ── Message ───────────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
              child: Text(
                n.message,
                style: TextStyle(
                  fontSize: AppSizes.sp15,
                  color: colors.textSecondary,
                  height: 1.6,
                ),
              ),
            ),

            // ── Meta info ─────────────────────────────────────────
            if (n.orderId != null || n.productId != null || n.vendorId != null)
              ..._buildMetaInfo(context, n, isDark, colors, s),

            SizedBox(height: AppSizes.h24),

            // ── Actions ───────────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w24),
              child: Row(
                children: [
                  if (!n.isRead) ...[
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          context
                              .read<NotificationBloc>()
                              .add(MarkAsReadEvent(n.id));
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.mark_email_read_rounded,
                          size: AppSizes.sp18,
                        ),
                        label: Text(s.markAsRead),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: typeColor,
                          side: BorderSide(color: typeColor.withOpacity(0.4)),
                          padding: EdgeInsets.symmetric(vertical: AppSizes.h14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizes.r12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: AppSizes.w12),
                  ],
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context
                            .read<NotificationBloc>()
                            .add(DeleteNotificationEvent(n.id));
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.delete_rounded, size: AppSizes.sp18),
                      label: Text(s.delete),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.error,
                        foregroundColor: colors.textOnPrimary,
                        padding: EdgeInsets.symmetric(vertical: AppSizes.h14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizes.r12),
                        ),
                        elevation: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMetaInfo(
    BuildContext context,
    NotificationEntity n,
    bool isDark,
    dynamic colors,
    S s,
  ) {
    return [
      SizedBox(height: AppSizes.h20),
      Container(
        margin: EdgeInsets.symmetric(horizontal: AppSizes.w24),
        padding: EdgeInsets.all(AppSizes.w16),
        decoration: BoxDecoration(
          color: isDark ? colors.background : colors.background,
          borderRadius: BorderRadius.circular(AppSizes.r12),
          border: Border.all(
            color: isDark ? colors.divider.withOpacity(0.3) : colors.divider,
          ),
        ),
        child: Column(
          children: [
            if (n.orderId != null)
              _MetaRow(
                icon: Icons.receipt_long_rounded,
                label: s.orderId,
                value: '#${n.orderId}',
                colors: colors,
              ),
            if (n.productId != null) ...[
              if (n.orderId != null) SizedBox(height: AppSizes.h8),
              _MetaRow(
                icon: Icons.inventory_2_rounded,
                label: s.productId,
                value: '#${n.productId}',
                colors: colors,
              ),
            ],
            if (n.vendorId != null) ...[
              if (n.orderId != null || n.productId != null)
                SizedBox(height: AppSizes.h8),
              _MetaRow(
                icon: Icons.store_rounded,
                label: s.vendorId,
                value: '#${n.vendorId}',
                colors: colors,
              ),
            ],
            SizedBox(height: AppSizes.h8),
            _MetaRow(
              icon: Icons.calendar_today_rounded,
              label: s.received,
              value: _formatDate(n.createdAt),
              colors: colors,
            ),
            if (n.readAt != null) ...[
              SizedBox(height: AppSizes.h8),
              _MetaRow(
                icon: Icons.done_all_rounded,
                label: s.readAt,
                value: _formatDate(n.readAt!),
                colors: colors,
              ),
            ],
          ],
        ),
      ),
    ];
  }

  String _formatDate(DateTime dt) {
    const months = [
      'Jan','Feb','Mar','Apr','May','Jun',
      'Jul','Aug','Sep','Oct','Nov','Dec',
    ];
    final h = dt.hour.toString().padLeft(2, '0');
    final m = dt.minute.toString().padLeft(2, '0');
    return '${months[dt.month - 1]} ${dt.day}, ${dt.year} at $h:$m';
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final dynamic colors;

  const _MetaRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: AppSizes.sp15, color: colors.textHint),
        SizedBox(width: AppSizes.w8),
        Text(
          label,
          style: TextStyle(
            fontSize: AppSizes.sp12,
            color: colors.textHint,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontSize: AppSizes.sp13,
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
        ),
      ],
    );
  }
}