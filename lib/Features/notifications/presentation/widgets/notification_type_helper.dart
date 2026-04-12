import 'package:flutter/material.dart';
import '../../domain/entities/notification_entity.dart';

class NotificationTypeHelper {
  static IconData getIcon(NotificationType type) {
    switch (type) {
      case NotificationType.review:
        return Icons.star_rounded;
      case NotificationType.order:
        return Icons.shopping_bag_rounded;
      case NotificationType.payment:
        return Icons.payment_rounded;
      case NotificationType.shipping:
        return Icons.local_shipping_rounded;
      case NotificationType.system:
        return Icons.settings_rounded;
      case NotificationType.promotion:
        return Icons.local_offer_rounded;
      case NotificationType.alert:
        return Icons.warning_amber_rounded;
      case NotificationType.message:
        return Icons.chat_bubble_rounded;
      case NotificationType.unknown:
        return Icons.notifications_rounded;
    }
  }

  static Color getColor(NotificationType type) {
    switch (type) {
      case NotificationType.review:
        return const Color(0xFFF59E0B);
      case NotificationType.order:
        return const Color(0xFF6366F1);
      case NotificationType.payment:
        return const Color(0xFF10B981);
      case NotificationType.shipping:
        return const Color(0xFF3B82F6);
      case NotificationType.system:
        return const Color(0xFF64748B);
      case NotificationType.promotion:
        return const Color(0xFFEC4899);
      case NotificationType.alert:
        return const Color(0xFFEF4444);
      case NotificationType.message:
        return const Color(0xFF8B5CF6);
      case NotificationType.unknown:
        return const Color(0xFF94A3B8);
    }
  }

  static String getLabel(NotificationType type) {
    switch (type) {
      case NotificationType.review:
        return 'Review';
      case NotificationType.order:
        return 'Order';
      case NotificationType.payment:
        return 'Payment';
      case NotificationType.shipping:
        return 'Shipping';
      case NotificationType.system:
        return 'System';
      case NotificationType.promotion:
        return 'Promotion';
      case NotificationType.alert:
        return 'Alert';
      case NotificationType.message:
        return 'Message';
      case NotificationType.unknown:
        return 'Notification';
    }
  }

  static Color getLightColor(NotificationType type) {
    return getColor(type).withOpacity(0.12);
  }
}
