import 'package:dartz/dartz.dart';
import '../entities/notification_entity.dart';
import '../repositories/notification_repository.dart';

class GetNotificationsUseCase {
  final NotificationRepository repository;
  GetNotificationsUseCase(this.repository);

  Future<Either<String, NotificationListEntity>> call({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  }) =>
      repository.getNotifications(
        unreadOnly: unreadOnly,
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
}

class GetUnreadCountUseCase {
  final NotificationRepository repository;
  GetUnreadCountUseCase(this.repository);

  Future<Either<String, int>> call() => repository.getUnreadCount();
}

class MarkAsReadUseCase {
  final NotificationRepository repository;
  MarkAsReadUseCase(this.repository);

  Future<Either<String, bool>> call(int notificationId) =>
      repository.markAsRead(notificationId);
}

class MarkAllAsReadUseCase {
  final NotificationRepository repository;
  MarkAllAsReadUseCase(this.repository);

  Future<Either<String, bool>> call() => repository.markAllAsRead();
}

class DeleteNotificationUseCase {
  final NotificationRepository repository;
  DeleteNotificationUseCase(this.repository);

  Future<Either<String, bool>> call(int notificationId) =>
      repository.deleteNotification(notificationId);
}

class BulkDeleteNotificationsUseCase {
  final NotificationRepository repository;
  BulkDeleteNotificationsUseCase(this.repository);

  Future<Either<String, bool>> call(List<int> ids) =>
      repository.bulkDeleteNotifications(ids);
}
