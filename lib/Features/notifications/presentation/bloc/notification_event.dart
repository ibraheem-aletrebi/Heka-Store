import 'package:equatable/equatable.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object?> get props => [];
}

class LoadNotificationsEvent extends NotificationEvent {
  final bool unreadOnly;
  final int pageNumber;
  final int pageSize;
  final bool refresh;

  const LoadNotificationsEvent({
    this.unreadOnly = false,
    this.pageNumber = 1,
    this.pageSize = 20,
    this.refresh = false,
  });

  @override
  List<Object?> get props => [unreadOnly, pageNumber, pageSize, refresh];
}

class LoadMoreNotificationsEvent extends NotificationEvent {
  const LoadMoreNotificationsEvent();
}

class RefreshNotificationsEvent extends NotificationEvent {
  const RefreshNotificationsEvent();
}

class FilterNotificationsEvent extends NotificationEvent {
  final bool unreadOnly;

  const FilterNotificationsEvent({required this.unreadOnly});

  @override
  List<Object?> get props => [unreadOnly];
}

class MarkAsReadEvent extends NotificationEvent {
  final int notificationId;

  const MarkAsReadEvent(this.notificationId);

  @override
  List<Object?> get props => [notificationId];
}

class MarkAllAsReadEvent extends NotificationEvent {
  const MarkAllAsReadEvent();
}

class DeleteNotificationEvent extends NotificationEvent {
  final int notificationId;

  const DeleteNotificationEvent(this.notificationId);

  @override
  List<Object?> get props => [notificationId];
}

class BulkDeleteEvent extends NotificationEvent {
  final List<int> ids;

  const BulkDeleteEvent(this.ids);

  @override
  List<Object?> get props => [ids];
}

class ToggleSelectionModeEvent extends NotificationEvent {
  const ToggleSelectionModeEvent();
}

class ToggleSelectNotificationEvent extends NotificationEvent {
  final int notificationId;

  const ToggleSelectNotificationEvent(this.notificationId);

  @override
  List<Object?> get props => [notificationId];
}

class SelectAllNotificationsEvent extends NotificationEvent {
  const SelectAllNotificationsEvent();
}

class ClearSelectionEvent extends NotificationEvent {
  const ClearSelectionEvent();
}

class LoadUnreadCountEvent extends NotificationEvent {
  const LoadUnreadCountEvent();
}
