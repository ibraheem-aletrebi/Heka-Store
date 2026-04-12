import 'package:equatable/equatable.dart';
import '../../domain/entities/notification_entity.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object?> get props => [];
}

class NotificationInitial extends NotificationState {
  const NotificationInitial();
}

class NotificationLoading extends NotificationState {
  const NotificationLoading();
}

class NotificationLoaded extends NotificationState {
  final List<NotificationEntity> notifications;
  final int totalCount;
  final int currentPage;
  final int totalPages;
  final int unreadCount;
  final bool hasNextPage;
  final bool isLoadingMore;
  final bool unreadOnly;
  final bool isSelectionMode;
  final Set<int> selectedIds;
  final String? actionMessage;

  const NotificationLoaded({
    required this.notifications,
    required this.totalCount,
    required this.currentPage,
    required this.totalPages,
    required this.unreadCount,
    required this.hasNextPage,
    this.isLoadingMore = false,
    this.unreadOnly = false,
    this.isSelectionMode = false,
    this.selectedIds = const {},
    this.actionMessage,
  });

  NotificationLoaded copyWith({
    List<NotificationEntity>? notifications,
    int? totalCount,
    int? currentPage,
    int? totalPages,
    int? unreadCount,
    bool? hasNextPage,
    bool? isLoadingMore,
    bool? unreadOnly,
    bool? isSelectionMode,
    Set<int>? selectedIds,
    String? actionMessage,
    bool clearMessage = false,
  }) {
    return NotificationLoaded(
      notifications: notifications ?? this.notifications,
      totalCount: totalCount ?? this.totalCount,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      unreadCount: unreadCount ?? this.unreadCount,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      unreadOnly: unreadOnly ?? this.unreadOnly,
      isSelectionMode: isSelectionMode ?? this.isSelectionMode,
      selectedIds: selectedIds ?? this.selectedIds,
      actionMessage: clearMessage ? null : (actionMessage ?? this.actionMessage),
    );
  }

  @override
  List<Object?> get props => [
        notifications,
        totalCount,
        currentPage,
        totalPages,
        unreadCount,
        hasNextPage,
        isLoadingMore,
        unreadOnly,
        isSelectionMode,
        selectedIds,
        actionMessage,
      ];
}

class NotificationError extends NotificationState {
  final String message;

  const NotificationError(this.message);

  @override
  List<Object?> get props => [message];
}

class NotificationEmpty extends NotificationState {
  final bool unreadOnly;

  const NotificationEmpty({this.unreadOnly = false});

  @override
  List<Object?> get props => [unreadOnly];
}
