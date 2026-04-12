import 'package:dartz/dartz.dart';
import '../entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<Either<String, NotificationListEntity>> getNotifications({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  });

  Future<Either<String, int>> getUnreadCount();

  Future<Either<String, bool>> markAsRead(int notificationId);

  Future<Either<String, bool>> markAllAsRead();

  Future<Either<String, bool>> deleteNotification(int notificationId);

  Future<Either<String, bool>> bulkDeleteNotifications(List<int> ids);
}
