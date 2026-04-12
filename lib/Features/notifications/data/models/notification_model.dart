import '../../domain/entities/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  const NotificationModel({
    required super.id,
    required super.title,
    required super.message,
    required super.type,
    super.orderId,
    super.productId,
    super.vendorId,
    required super.isRead,
    required super.createdAt,
    super.readAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      message: json['message'] as String? ?? '',
      type: NotificationType.fromString(json['type'] as String?),
      orderId: json['orderId'] as int?,
      productId: json['productId'] as int?,
      vendorId: json['vendorId'] as int?,
      isRead: json['isRead'] as bool? ?? false,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? '') ??
          DateTime.now(),
      readAt: json['readAt'] != null
          ? DateTime.tryParse(json['readAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'message': message,
        'type': type.name,
        'orderId': orderId,
        'productId': productId,
        'vendorId': vendorId,
        'isRead': isRead,
        'createdAt': createdAt.toIso8601String(),
        'readAt': readAt?.toIso8601String(),
      };
}

class NotificationListModel extends NotificationListEntity {
  const NotificationListModel({
    required super.items,
    required super.totalCount,
    required super.pageNumber,
    required super.pageSize,
    required super.totalPages,
    required super.unreadCount,
    required super.hasPreviousPage,
    required super.hasNextPage,
  });

  factory NotificationListModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final itemsJson = data['items'] as List<dynamic>? ?? [];
    return NotificationListModel(
      items: itemsJson
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: data['totalCount'] as int? ?? 0,
      pageNumber: data['pageNumber'] as int? ?? 1,
      pageSize: data['pageSize'] as int? ?? 20,
      totalPages: data['totalPages'] as int? ?? 1,
      unreadCount: data['unreadCount'] as int? ?? 0,
      hasPreviousPage: data['hasPreviousPage'] as bool? ?? false,
      hasNextPage: data['hasNextPage'] as bool? ?? false,
    );
  }
}
