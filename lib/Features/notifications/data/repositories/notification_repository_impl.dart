import 'package:dartz/dartz.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/repositories/notification_repository.dart';
import '../datasources/notification_remote_datasource.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource remoteDataSource;

  NotificationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, NotificationListEntity>> getNotifications({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    try {
      final result = await remoteDataSource.getNotifications(
        unreadOnly: unreadOnly,
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, int>> getUnreadCount() async {
    try {
      final result = await remoteDataSource.getUnreadCount();
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> markAsRead(int notificationId) async {
    try {
      final result = await remoteDataSource.markAsRead(notificationId);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> markAllAsRead() async {
    try {
      final result = await remoteDataSource.markAllAsRead();
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> deleteNotification(int notificationId) async {
    try {
      final result = await remoteDataSource.deleteNotification(notificationId);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> bulkDeleteNotifications(List<int> ids) async {
    try {
      final result = await remoteDataSource.bulkDeleteNotifications(ids);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
