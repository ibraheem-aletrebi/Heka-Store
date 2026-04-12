import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final typeColor = NotificationTypeHelper.getColor(n.type);
    final typeIcon = NotificationTypeHelper.getIcon(n.type);
    final lightColor = NotificationTypeHelper.getLightColor(n.type);

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.4,
      maxChildSize: 0.85,
      builder: (_, controller) => Container(
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF1E293B) : Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: ListView(
          controller: controller,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 16,
          ),
          children: [
            // Handle
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 12, bottom: 20),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white12
                      : const Color(0xFFCBD5E1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            // Icon + Type
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(typeIcon, color: typeColor, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: lightColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          NotificationTypeHelper.getLabel(n.type),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: typeColor,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        timeago.format(n.createdAt, allowFromNow: true),
                        style: TextStyle(
                          fontSize: 12,
                          color: isDark
                              ? Colors.white38
                              : const Color(0xFF94A3B8),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (!n.isRead)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEF4444).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFFEF4444).withOpacity(0.3),
                        ),
                      ),
                      child: const Text(
                        'Unread',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFEF4444),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Divider
            Divider(
              color: isDark ? Colors.white12 : const Color(0xFFF1F5F9),
              height: 1,
            ),

            const SizedBox(height: 20),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                n.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: isDark ? Colors.white : const Color(0xFF0F172A),
                  letterSpacing: -0.5,
                  height: 1.3,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Message
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                n.message,
                style: TextStyle(
                  fontSize: 15,
                  color: isDark ? Colors.white60 : const Color(0xFF475569),
                  height: 1.6,
                ),
              ),
            ),

            // Meta info
            if (n.orderId != null || n.productId != null || n.vendorId != null)
              ..._buildMetaInfo(context, n, isDark),

            const SizedBox(height: 24),

            // Actions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                        icon: const Icon(Icons.mark_email_read_rounded, size: 18),
                        label: const Text('Mark as read'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: typeColor,
                          side: BorderSide(color: typeColor.withOpacity(0.4)),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                  ],
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context
                            .read<NotificationBloc>()
                            .add(DeleteNotificationEvent(n.id));
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.delete_rounded, size: 18),
                      label: const Text('Delete'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEF4444),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
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
  ) {
    return [
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF0F172A)
              : const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark
                ? Colors.white12
                : const Color(0xFFE2E8F0),
          ),
        ),
        child: Column(
          children: [
            if (n.orderId != null)
              _MetaRow(
                icon: Icons.receipt_long_rounded,
                label: 'Order ID',
                value: '#${n.orderId}',
                isDark: isDark,
              ),
            if (n.productId != null) ...[
              if (n.orderId != null) const SizedBox(height: 8),
              _MetaRow(
                icon: Icons.inventory_2_rounded,
                label: 'Product ID',
                value: '#${n.productId}',
                isDark: isDark,
              ),
            ],
            if (n.vendorId != null) ...[
              if (n.orderId != null || n.productId != null)
                const SizedBox(height: 8),
              _MetaRow(
                icon: Icons.store_rounded,
                label: 'Vendor ID',
                value: '#${n.vendorId}',
                isDark: isDark,
              ),
            ],
            const SizedBox(height: 8),
            _MetaRow(
              icon: Icons.calendar_today_rounded,
              label: 'Received',
              value: _formatDate(n.createdAt),
              isDark: isDark,
            ),
            if (n.readAt != null) ...[
              const SizedBox(height: 8),
              _MetaRow(
                icon: Icons.done_all_rounded,
                label: 'Read at',
                value: _formatDate(n.readAt!),
                isDark: isDark,
              ),
            ],
          ],
        ),
      ),
    ];
  }

  String _formatDate(DateTime dt) {
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    final hour = dt.hour.toString().padLeft(2, '0');
    final min = dt.minute.toString().padLeft(2, '0');
    return '${months[dt.month - 1]} ${dt.day}, ${dt.year} at $hour:$min';
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isDark;

  const _MetaRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: isDark ? Colors.white38 : const Color(0xFF94A3B8),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isDark ? Colors.white38 : const Color(0xFF94A3B8),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: isDark ? Colors.white70 : const Color(0xFF334155),
          ),
        ),
      ],
    );
  }
}
