import 'package:equatable/equatable.dart';

enum NotificationType {
  review,
  order,
  payment,
  shipping,
  system,
  promotion,
  alert,
  message,
  unknown;

  static NotificationType fromString(String? value) {
    switch (value?.toLowerCase()) {
      case 'review':
        return NotificationType.review;
      case 'order':
        return NotificationType.order;
      case 'payment':
        return NotificationType.payment;
      case 'shipping':
        return NotificationType.shipping;
      case 'system':
        return NotificationType.system;
      case 'promotion':
        return NotificationType.promotion;
      case 'alert':
        return NotificationType.alert;
      case 'message':
        return NotificationType.message;
      default:
        return NotificationType.unknown;
    }
  }
}

class NotificationEntity extends Equatable {
  final int id;
  final String title;
  final String message;
  final NotificationType type;
  final int? orderId;
  final int? productId;
  final int? vendorId;
  final bool isRead;
  final DateTime createdAt;
  final DateTime? readAt;

  const NotificationEntity({
    required this.id,
    required this.title,
    required this.message,
    required this.type,
    this.orderId,
    this.productId,
    this.vendorId,
    required this.isRead,
    required this.createdAt,
    this.readAt,
  });

  NotificationEntity copyWith({
    int? id,
    String? title,
    String? message,
    NotificationType? type,
    int? orderId,
    int? productId,
    int? vendorId,
    bool? isRead,
    DateTime? createdAt,
    DateTime? readAt,
  }) {
    return NotificationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      type: type ?? this.type,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      vendorId: vendorId ?? this.vendorId,
      isRead: isRead ?? this.isRead,
      createdAt: createdAt ?? this.createdAt,
      readAt: readAt ?? this.readAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        message,
        type,
        orderId,
        productId,
        vendorId,
        isRead,
        createdAt,
        readAt,
      ];
}

class NotificationListEntity extends Equatable {
  final List<NotificationEntity> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final int unreadCount;
  final bool hasPreviousPage;
  final bool hasNextPage;

  const NotificationListEntity({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.unreadCount,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  @override
  List<Object?> get props => [
        items,
        totalCount,
        pageNumber,
        pageSize,
        totalPages,
        unreadCount,
        hasPreviousPage,
        hasNextPage,
      ];
}
