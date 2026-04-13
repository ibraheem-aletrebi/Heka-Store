import 'package:heka_store/core/services/remote/api_service.dart';
import '../models/notification_model.dart';

abstract class NotificationRemoteDataSource {
  Future<NotificationListModel> getNotifications({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  });
  Future<int> getUnreadCount();
  Future<bool> markAsRead(int notificationId);
  Future<bool> markAllAsRead();
  Future<bool> deleteNotification(int notificationId);
  Future<bool> bulkDeleteNotifications(List<int> ids);
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final ApiService _apiService;

  NotificationRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<NotificationListModel> getNotifications({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    final response = await _apiService.get(
      '/api/Notifications',
      queryParameters: {
        'unreadOnly': unreadOnly,
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
    );

    final data = response.data as Map<String, dynamic>;
    if (data['success'] == true) {
      return NotificationListModel.fromJson(data);
    }
    throw Exception(data['message'] ?? 'Failed to fetch notifications');
  }

  @override
  Future<int> getUnreadCount() async {
    final response = await _apiService.get('/api/Notifications/unread/count');

    final data = response.data as Map<String, dynamic>;
    if (data['success'] == true) {
      final body = data['data'] as Map<String, dynamic>? ?? {};
      return body['unreadCount'] as int? ?? 0;
    }
    throw Exception(data['message'] ?? 'Failed to fetch unread count');
  }

  @override
  Future<bool> markAsRead(int notificationId) async {
    final response = await _apiService.put(
      '/api/Notifications/$notificationId/read',
    );

    final data = response.data as Map<String, dynamic>;
    return data['success'] == true;
  }

  @override
  Future<bool> markAllAsRead() async {
    final response = await _apiService.patch('/api/Notifications/read-all');

    final data = response.data as Map<String, dynamic>;
    return data['success'] == true;
  }

  @override
  Future<bool> deleteNotification(int notificationId) async {
    final response = await _apiService.delete(
      '/api/Notifications/$notificationId',
    );

    final data = response.data as Map<String, dynamic>;
    return data['success'] == true;
  }

  @override
  Future<bool> bulkDeleteNotifications(List<int> ids) async {
    final response = await _apiService.delete(
      '/api/Notifications/bulk',
      data: {'ids': ids},
    );

    final data = response.data as Map<String, dynamic>;
    return data['success'] == true;
  }
}
