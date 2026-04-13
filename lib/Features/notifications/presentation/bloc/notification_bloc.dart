import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/notification_usecases.dart';
import 'notification_event.dart';
import 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationsUseCase getNotificationsUseCase;
  final GetUnreadCountUseCase getUnreadCountUseCase;
  final MarkAsReadUseCase markAsReadUseCase;
  final MarkAllAsReadUseCase markAllAsReadUseCase;
  final DeleteNotificationUseCase deleteNotificationUseCase;
  final BulkDeleteNotificationsUseCase bulkDeleteUseCase;

  NotificationBloc({
    required this.getNotificationsUseCase,
    required this.getUnreadCountUseCase,
    required this.markAsReadUseCase,
    required this.markAllAsReadUseCase,
    required this.deleteNotificationUseCase,
    required this.bulkDeleteUseCase,
  }) : super(const NotificationInitial()) {
    on<LoadNotificationsEvent>(_onLoad);
    on<LoadMoreNotificationsEvent>(_onLoadMore);
    on<RefreshNotificationsEvent>(_onRefresh);
    on<FilterNotificationsEvent>(_onFilter);
    on<MarkAsReadEvent>(_onMarkAsRead);
    on<MarkAllAsReadEvent>(_onMarkAllAsRead);
    on<DeleteNotificationEvent>(_onDelete);
    on<BulkDeleteEvent>(_onBulkDelete);
    on<ToggleSelectionModeEvent>(_onToggleSelection);
    on<ToggleSelectNotificationEvent>(_onToggleSelectItem);
    on<SelectAllNotificationsEvent>(_onSelectAll);
    on<ClearSelectionEvent>(_onClearSelection);
    on<LoadUnreadCountEvent>(_onLoadUnreadCount);
    on<ClearActionMessageEvent>(_onClearActionMessage);
  }

  bool _unreadOnly = false;

  Future<void> _onLoad(
    LoadNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    _unreadOnly = event.unreadOnly;

    // ✅ Only show full loading screen on fresh load, not filter/refresh
    if (!event.refresh) emit(const NotificationLoading());

    final result = await getNotificationsUseCase(
      unreadOnly: event.unreadOnly,
      pageNumber: event.pageNumber,
      pageSize: event.pageSize,
    );

    result.fold(
      (error) => emit(NotificationError(error)),
      (data) {
        if (data.items.isEmpty) {
          emit(NotificationEmpty(unreadOnly: event.unreadOnly));
        } else {
          emit(NotificationLoaded(
            notifications: data.items,
            totalCount: data.totalCount,
            currentPage: data.pageNumber,
            totalPages: data.totalPages,
            unreadCount: data.unreadCount,
            hasNextPage: data.hasNextPage,
            unreadOnly: event.unreadOnly, // ✅ always reflects current filter
          ));
        }
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final current = state;
    if (current is! NotificationLoaded ||
        !current.hasNextPage ||
        current.isLoadingMore) return;

    emit(current.copyWith(isLoadingMore: true));

    final result = await getNotificationsUseCase(
      unreadOnly: current.unreadOnly,
      pageNumber: current.currentPage + 1,
    );

    result.fold(
      (error) => emit(current.copyWith(isLoadingMore: false)),
      (data) => emit(current.copyWith(
        notifications: [...current.notifications, ...data.items],
        currentPage: data.pageNumber,
        totalPages: data.totalPages,
        hasNextPage: data.hasNextPage,
        unreadCount: data.unreadCount,
        isLoadingMore: false,
      )),
    );
  }

  Future<void> _onRefresh(
    RefreshNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    add(LoadNotificationsEvent(unreadOnly: _unreadOnly, refresh: true));
  }

  Future<void> _onFilter(
    FilterNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    _unreadOnly = event.unreadOnly;

    // ✅ Update unreadOnly on current state immediately so tab reflects change
    final current = state;
    if (current is NotificationLoaded) {
      emit(current.copyWith(
        unreadOnly: event.unreadOnly,
        isLoadingMore: false,
      ));
    }

    // ✅ Fetch with new filter using refresh:true to skip NotificationLoading
    add(LoadNotificationsEvent(unreadOnly: event.unreadOnly, refresh: true));
  }

  Future<void> _onMarkAsRead(
    MarkAsReadEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final current = state;
    if (current is! NotificationLoaded) return;

    final result = await markAsReadUseCase(event.notificationId);
    result.fold(
      (error) => null,
      (_) {
        final updated = current.notifications.map((n) {
          if (n.id == event.notificationId) {
            return n.copyWith(isRead: true, readAt: DateTime.now());
          }
          return n;
        }).toList();

        final unreadCount =
            (current.unreadCount - 1).clamp(0, current.unreadCount);
        final filtered = current.unreadOnly
            ? updated.where((n) => !n.isRead).toList()
            : updated;

        if (filtered.isEmpty && current.unreadOnly) {
          emit(NotificationEmpty(unreadOnly: current.unreadOnly));
        } else {
          emit(current.copyWith(
            notifications: filtered,
            unreadCount: unreadCount,
            actionMessage: 'Marked as read',
          ));
        }
      },
    );
  }

  Future<void> _onMarkAllAsRead(
    MarkAllAsReadEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final current = state;
    if (current is! NotificationLoaded) return;

    final result = await markAllAsReadUseCase();
    result.fold(
      (error) => null,
      (_) {
        final updated = current.notifications
            .map((n) => n.copyWith(isRead: true, readAt: DateTime.now()))
            .toList();

        if (current.unreadOnly) {
          emit(NotificationEmpty(unreadOnly: current.unreadOnly));
        } else {
          emit(current.copyWith(
            notifications: updated,
            unreadCount: 0,
            actionMessage: 'All notifications marked as read',
          ));
        }
      },
    );
  }

  Future<void> _onDelete(
    DeleteNotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final current = state;
    if (current is! NotificationLoaded) return;

    final result = await deleteNotificationUseCase(event.notificationId);
    result.fold(
      (error) => null,
      (_) {
        final deleted = current.notifications.firstWhere(
          (n) => n.id == event.notificationId,
          orElse: () => current.notifications.first,
        );

        final updated = current.notifications
            .where((n) => n.id != event.notificationId)
            .toList();

        final unreadCount = !deleted.isRead
            ? (current.unreadCount - 1).clamp(0, current.unreadCount)
            : current.unreadCount;

        if (updated.isEmpty) {
          emit(NotificationEmpty(unreadOnly: current.unreadOnly));
        } else {
          emit(current.copyWith(
            notifications: updated,
            totalCount: current.totalCount - 1,
            unreadCount: unreadCount,
            actionMessage: 'Notification deleted',
          ));
        }
      },
    );
  }

  Future<void> _onBulkDelete(
    BulkDeleteEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final current = state;
    if (current is! NotificationLoaded) return;

    final result = await bulkDeleteUseCase(event.ids);
    result.fold(
      (error) => null,
      (_) {
        final deletedSet = event.ids.toSet();
        final deletedUnread = current.notifications
            .where((n) => deletedSet.contains(n.id) && !n.isRead)
            .length;

        final updated = current.notifications
            .where((n) => !deletedSet.contains(n.id))
            .toList();

        final unreadCount =
            (current.unreadCount - deletedUnread).clamp(0, current.unreadCount);

        if (updated.isEmpty) {
          emit(NotificationEmpty(unreadOnly: current.unreadOnly));
        } else {
          emit(current.copyWith(
            notifications: updated,
            totalCount: current.totalCount - event.ids.length,
            unreadCount: unreadCount,
            isSelectionMode: false,
            selectedIds: {},
            actionMessage: '${event.ids.length} notifications deleted',
          ));
        }
      },
    );
  }

  void _onToggleSelection(
    ToggleSelectionModeEvent event,
    Emitter<NotificationState> emit,
  ) {
    final current = state;
    if (current is! NotificationLoaded) return;
    emit(current.copyWith(
      isSelectionMode: !current.isSelectionMode,
      selectedIds: {},
    ));
  }

  void _onToggleSelectItem(
    ToggleSelectNotificationEvent event,
    Emitter<NotificationState> emit,
  ) {
    final current = state;
    if (current is! NotificationLoaded) return;

    final newSet = Set<int>.from(current.selectedIds);
    if (newSet.contains(event.notificationId)) {
      newSet.remove(event.notificationId);
    } else {
      newSet.add(event.notificationId);
    }
    emit(current.copyWith(selectedIds: newSet));
  }

  void _onSelectAll(
    SelectAllNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) {
    final current = state;
    if (current is! NotificationLoaded) return;
    final allIds = current.notifications.map((n) => n.id).toSet();
    emit(current.copyWith(selectedIds: allIds));
  }

  void _onClearSelection(
    ClearSelectionEvent event,
    Emitter<NotificationState> emit,
  ) {
    final current = state;
    if (current is! NotificationLoaded) return;
    emit(current.copyWith(
      isSelectionMode: false,
      selectedIds: {},
    ));
  }

  Future<void> _onLoadUnreadCount(
    LoadUnreadCountEvent event,
    Emitter<NotificationState> emit,
  ) async {
    final result = await getUnreadCountUseCase();
    result.fold(
      (error) => null,
      (count) {
        final current = state;
        if (current is NotificationLoaded) {
          emit(current.copyWith(unreadCount: count));
        }
      },
    );
  }

  void _onClearActionMessage(
    ClearActionMessageEvent event,
    Emitter<NotificationState> emit,
  ) {
    final current = state;
    if (current is! NotificationLoaded) return;
    emit(current.copyWith(clearMessage: true));
  }
}