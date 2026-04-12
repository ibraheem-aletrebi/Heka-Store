import 'dart:convert';
import 'package:http/http.dart' as http;
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
  final http.Client client;
  final String baseUrl;
  // Pass your auth token here if needed
  final String? authToken;

  NotificationRemoteDataSourceImpl({
    required this.client,
    this.baseUrl = 'https://heka.runasp.net/api',
    this.authToken,
  });

  Map<String, String> get _headers => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        if (authToken != null) 'Authorization': 'Bearer $authToken',
      };

  @override
  Future<NotificationListModel> getNotifications({
    bool unreadOnly = false,
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    final uri = Uri.parse('$baseUrl/Notifications').replace(
      queryParameters: {
        'unreadOnly': unreadOnly.toString(),
        'pageNumber': pageNumber.toString(),
        'pageSize': pageSize.toString(),
      },
    );

    final response = await client.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == true) {
        return NotificationListModel.fromJson(json);
      }
      throw Exception(json['message'] ?? 'Failed to fetch notifications');
    }
    throw Exception('Server error: ${response.statusCode}');
  }

  @override
  Future<int> getUnreadCount() async {
    final uri = Uri.parse('$baseUrl/Notifications/unread/count');
    final response = await client.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == true) {
        final data = json['data'] as Map<String, dynamic>? ?? {};
        return data['unreadCount'] as int? ?? 0;
      }
      throw Exception(json['message'] ?? 'Failed to fetch unread count');
    }
    throw Exception('Server error: ${response.statusCode}');
  }

  @override
  Future<bool> markAsRead(int notificationId) async {
    final uri = Uri.parse('$baseUrl/Notifications/$notificationId/read');
    final response = await client.put(uri, headers: _headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['success'] == true;
    }
    throw Exception('Server error: ${response.statusCode}');
  }

  @override
  Future<bool> markAllAsRead() async {
    final uri = Uri.parse('$baseUrl/Notifications/read-all');
    final response = await client.put(uri, headers: _headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['success'] == true;
    }
    throw Exception('Server error: ${response.statusCode}');
  }

  @override
  Future<bool> deleteNotification(int notificationId) async {
    final uri = Uri.parse('$baseUrl/Notifications/$notificationId');
    final response = await client.delete(uri, headers: _headers);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['success'] == true;
    }
    throw Exception('Server error: ${response.statusCode}');
  }

  @override
  Future<bool> bulkDeleteNotifications(List<int> ids) async {
    final uri = Uri.parse('$baseUrl/Notifications/bulk');
    final response = await client.delete(
      uri,
      headers: _headers,
      body: jsonEncode({'ids': ids}),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['success'] == true;
    }
    throw Exception('Server error: ${response.statusCode}');
  }
}
