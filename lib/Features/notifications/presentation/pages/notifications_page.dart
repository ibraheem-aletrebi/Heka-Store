import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import '../bloc/notification_state.dart';
import '../widgets/notification_card.dart';
import '../widgets/notification_filter_tabs.dart';
import '../widgets/notification_empty_state.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<NotificationBloc>().add(const LoadNotificationsEvent());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<NotificationBloc>().add(const LoadMoreNotificationsEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;

    return BlocConsumer<NotificationBloc, NotificationState>(
      listenWhen: (prev, curr) =>
          curr is NotificationLoaded && (curr).actionMessage != null,
      listener: (context, state) {
        if (state is NotificationLoaded && state.actionMessage != null) {
          _showSnackBar(context, state.actionMessage!);
          context.read<NotificationBloc>().add(
            const LoadNotificationsEvent(refresh: true),
          );
        }
      },
      builder: (context, state) {
        final isLoaded = state is NotificationLoaded;
        final isSelectionMode = isLoaded && state.isSelectionMode;
        final selectedCount = isLoaded ? state.selectedIds.length : 0;
        final unreadCount = isLoaded ? state.unreadCount : 0;
        final unreadOnly = isLoaded ? state.unreadOnly : false;

        return Scaffold(
          appBar: _buildAppBar(
            context,
            isDark,
            isSelectionMode,
            selectedCount,
            isLoaded,
            state,
          ),
          body: Column(
            children: [
              if (!isSelectionMode)
                NotificationFilterTabs(
                  unreadOnly: unreadOnly,
                  unreadCount: unreadCount,
                  onChanged: (val) => context.read<NotificationBloc>().add(
                    FilterNotificationsEvent(unreadOnly: val),
                  ),
                ),
              if (isSelectionMode) _buildSelectionActions(context, state),
              Expanded(child: _buildBody(context, state, isDark)),
            ],
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    bool isDark,
    bool isSelectionMode,
    int selectedCount,
    bool isLoaded,
    NotificationState state,
  ) {
    return AppBar(
      backgroundColor: isDark
          ? const Color(0xFF0F172A)
          : const Color(0xFFF8FAFC),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: isDark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      leading: isSelectionMode
          ? IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () => context.read<NotificationBloc>().add(
                const ClearSelectionEvent(),
              ),
            )
          : null,
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: isSelectionMode
            ? Text(
                '$selectedCount selected',
                key: const ValueKey('selection'),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: isDark ? Colors.white : const Color(0xFF0F172A),
                ),
              )
            : Column(
                key: const ValueKey('title'),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: isDark ? Colors.white : const Color(0xFF0F172A),
                      letterSpacing: -0.8,
                    ),
                  ),
                  if (isLoaded && (state as NotificationLoaded).unreadCount > 0)
                    Text(
                      '${state.unreadCount} unread',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: isDark
                            ? Colors.white38
                            : const Color(0xFF94A3B8),
                      ),
                    ),
                ],
              ),
      ),
      actions: [
        if (isSelectionMode) ...[
          if (selectedCount <
              (isLoaded
                  ? (state as NotificationLoaded).notifications.length
                  : 0))
            TextButton(
              onPressed: () => context.read<NotificationBloc>().add(
                const SelectAllNotificationsEvent(),
              ),
              child: const Text('Select All'),
            ),
          if (selectedCount > 0)
            IconButton(
              icon: const Icon(Icons.delete_rounded),
              color: const Color(0xFFEF4444),
              onPressed: () => _confirmBulkDelete(context, state),
            ),
        ] else ...[
          if (isLoaded && (state as NotificationLoaded).unreadCount > 0)
            TextButton(
              onPressed: () => context.read<NotificationBloc>().add(
                const MarkAllAsReadEvent(),
              ),
              child: const Text(
                'Mark all read',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6366F1),
                ),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.checklist_rounded),
            tooltip: 'Select',
            onPressed: isLoaded
                ? () => context.read<NotificationBloc>().add(
                    const ToggleSelectionModeEvent(),
                  )
                : null,
          ),
        ],
      ],
    );
  }

  Widget _buildSelectionActions(BuildContext context, NotificationState state) {
    if (state is! NotificationLoaded) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF6366F1).withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF6366F1).withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline_rounded,
            size: 16,
            color: const Color(0xFF6366F1),
          ),
          const SizedBox(width: 8),
          Text(
            'Long press items to select • Swipe left to delete',
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xFF6366F1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    NotificationState state,
    bool isDark,
  ) {
    if (state is NotificationLoading) {
      return const NotificationShimmerLoading();
    }

    if (state is NotificationError) {
      return _buildError(context, state.message);
    }

    if (state is NotificationEmpty) {
      return NotificationEmptyState(unreadOnly: state.unreadOnly);
    }

    if (state is NotificationLoaded) {
      return RefreshIndicator(
        onRefresh: () async {
          context.read<NotificationBloc>().add(
            const RefreshNotificationsEvent(),
          );
          await Future.delayed(const Duration(milliseconds: 800));
        },
        color: const Color(0xFF6366F1),
        child: ListView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.only(top: 8, bottom: 24),
          itemCount: state.notifications.length + (state.isLoadingMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == state.notifications.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Color(0xFF6366F1),
                    ),
                  ),
                ),
              );
            }

            final notification = state.notifications[index];
            final isSelected = state.selectedIds.contains(notification.id);

            return NotificationCard(
              notification: notification,
              isSelectionMode: state.isSelectionMode,
              isSelected: isSelected,
            );
          },
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFEF4444).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.wifi_off_rounded,
                size: 36,
                color: Color(0xFFEF4444),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Connection Error',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Color(0xFF94A3B8)),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.read<NotificationBloc>().add(
                const LoadNotificationsEvent(),
              ),
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6366F1),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmBulkDelete(BuildContext context, NotificationState state) {
    if (state is! NotificationLoaded) return;
    final ids = state.selectedIds.toList();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? const Color(0xFF1E293B)
              : Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFCBD5E1),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xFFEF4444).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.delete_forever_rounded,
                color: Color(0xFFEF4444),
                size: 32,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Delete ${ids.length} notification${ids.length > 1 ? 's' : ''}?',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              'This action cannot be undone.',
              style: TextStyle(fontSize: 14, color: Color(0xFF94A3B8)),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<NotificationBloc>().add(
                        BulkDeleteEvent(ids),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEF4444),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Delete',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.check_circle_rounded,
              color: Colors.white,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(message),
          ],
        ),
        backgroundColor: const Color(0xFF10B981),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
