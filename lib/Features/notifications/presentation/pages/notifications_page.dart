import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import '../bloc/notification_state.dart';
import '../widgets/grouped_notification_list.dart';
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
      context
          .read<NotificationBloc>()
          .add(const LoadMoreNotificationsEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;

    return BlocConsumer<NotificationBloc, NotificationState>(
      listenWhen: (_, curr) =>
          curr is NotificationLoaded && curr.actionMessage != null,
      listener: (context, state) {
        if (state is NotificationLoaded && state.actionMessage != null) {
          _showSnackBar(context, state.actionMessage!);
          context
              .read<NotificationBloc>()
              .add(const LoadNotificationsEvent(refresh: true));
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
                  onChanged: (val) => context
                      .read<NotificationBloc>()
                      .add(FilterNotificationsEvent(unreadOnly: val)),
                ),
              if (isSelectionMode) _buildSelectionBanner(context, state),
              Expanded(child: _buildBody(context, state, isDark)),
            ],
          ),
        );
      },
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // AppBar
  // ─────────────────────────────────────────────────────────────────────────

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    bool isDark,
    bool isSelectionMode,
    int selectedCount,
    bool isLoaded,
    NotificationState state,
  ) {
    final colors = context.myColors;
    final s = S.of(context);

    return AppBar(
      backgroundColor: colors.background,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle:
          isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      leading: isSelectionMode
          ? IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () => context
                  .read<NotificationBloc>()
                  .add(const ClearSelectionEvent()),
            )
          : null,
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: isSelectionMode
            ? Text(
                s.selectedCount(selectedCount),
                key: const ValueKey('selection'),
                style: TextStyle(
                  fontSize: AppSizes.sp18,
                  fontWeight: FontWeight.w700,
                  color: colors.textPrimary,
                ),
              )
            : Column(
                key: const ValueKey('title'),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.notifications,
                    style: TextStyle(
                      fontSize: AppSizes.sp24,
                      fontWeight: FontWeight.w800,
                      color: colors.textPrimary,
                      letterSpacing: -0.8,
                    ),
                  ),
                  if (isLoaded &&
                      (state as NotificationLoaded).unreadCount > 0)
                    Text(
                      s.unreadCount(state.unreadCount),
                      style: TextStyle(
                        fontSize: AppSizes.sp12,
                        fontWeight: FontWeight.w500,
                        color: colors.textHint,
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
              onPressed: () => context
                  .read<NotificationBloc>()
                  .add(const SelectAllNotificationsEvent()),
              child: Text(
                s.selectAll,
                style: TextStyle(color: colors.primary),
              ),
            ),
          if (selectedCount > 0)
            IconButton(
              icon: const Icon(Icons.delete_rounded),
              color: colors.error,
              onPressed: () => _confirmBulkDelete(context, state),
            ),
        ] else ...[
          if (isLoaded && (state as NotificationLoaded).unreadCount > 0)
            TextButton(
              onPressed: () => context
                  .read<NotificationBloc>()
                  .add(const MarkAllAsReadEvent()),
              child: Text(
                s.markAllRead,
                style: TextStyle(
                  fontSize: AppSizes.sp13,
                  fontWeight: FontWeight.w600,
                  color: colors.primary,
                ),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.checklist_rounded),
            tooltip: s.select,
            onPressed: isLoaded
                ? () => context
                    .read<NotificationBloc>()
                    .add(const ToggleSelectionModeEvent())
                : null,
          ),
        ],
      ],
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Selection hint banner
  // ─────────────────────────────────────────────────────────────────────────

  Widget _buildSelectionBanner(
      BuildContext context, NotificationState state) {
    if (state is! NotificationLoaded) return const SizedBox.shrink();
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      margin: EdgeInsets.fromLTRB(
        AppSizes.w16,
        AppSizes.h8,
        AppSizes.w16,
        AppSizes.h4,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h10,
      ),
      decoration: BoxDecoration(
        color: colors.primary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: colors.primary.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline_rounded,
            size: AppSizes.sp16,
            color: colors.primary,
          ),
          SizedBox(width: AppSizes.w8),
          Text(
            s.selectionHint,
            style: TextStyle(
              fontSize: AppSizes.sp12,
              color: colors.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Body
  // ─────────────────────────────────────────────────────────────────────────

  Widget _buildBody(
      BuildContext context, NotificationState state, bool isDark) {
    if (state is NotificationLoading) return const NotificationShimmerLoading();
    if (state is NotificationError) return _buildError(context, state.message);
    if (state is NotificationEmpty) {
      return NotificationEmptyState(unreadOnly: state.unreadOnly);
    }
    if (state is NotificationLoaded) {
      return RefreshIndicator(
        onRefresh: () async {
          context
              .read<NotificationBloc>()
              .add(const RefreshNotificationsEvent());
          await Future.delayed(const Duration(milliseconds: 800));
        },
        color: context.myColors.primary,
        child: GroupedNotificationList(
          notifications: state.notifications,
          isSelectionMode: state.isSelectionMode,
          selectedIds: state.selectedIds,
          isLoadingMore: state.isLoadingMore,
          hasNextPage: state.hasNextPage,
          scrollController: _scrollController,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Error state
  // ─────────────────────────────────────────────────────────────────────────

  Widget _buildError(BuildContext context, String message) {
    final colors = context.myColors;
    final s = S.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: AppSizes.w80,
              height: AppSizes.h80,
              decoration: BoxDecoration(
                color: colors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi_off_rounded,
                size: AppSizes.sp36,
                color: colors.error,
              ),
            ),
            SizedBox(height: AppSizes.h20),
            Text(
              s.connectionError,
              style: TextStyle(
                fontSize: AppSizes.sp18,
                fontWeight: FontWeight.w700,
                color: colors.textPrimary,
              ),
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.sp13,
                color: colors.textHint,
              ),
            ),
            SizedBox(height: AppSizes.h24),
            ElevatedButton.icon(
              onPressed: () => context
                  .read<NotificationBloc>()
                  .add(const LoadNotificationsEvent()),
              icon: Icon(Icons.refresh_rounded, size: AppSizes.sp18),
              label: Text(s.tryAgain),
              style: ElevatedButton.styleFrom(
                backgroundColor: colors.primary,
                foregroundColor: colors.textOnPrimary,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w24,
                  vertical: AppSizes.h12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.r12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Bulk delete confirmation sheet
  // ─────────────────────────────────────────────────────────────────────────

  void _confirmBulkDelete(BuildContext context, NotificationState state) {
    if (state is! NotificationLoaded) return;
    final ids = state.selectedIds.toList();
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final s = S.of(context);

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: isDark ? colors.surface : colors.surface,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSizes.r24),
          ),
        ),
        padding: EdgeInsets.all(AppSizes.w24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              width: AppSizes.w40,
              height: AppSizes.h4,
              decoration: BoxDecoration(
                color: colors.divider,
                borderRadius: BorderRadius.circular(AppSizes.r4 / 2),
              ),
            ),
            SizedBox(height: AppSizes.h24),

            // Icon
            Container(
              width: AppSizes.w64,
              height: AppSizes.h64 ?? AppSizes.w64,
              decoration: BoxDecoration(
                color: colors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.delete_forever_rounded,
                color: colors.error,
                size: AppSizes.sp32,
              ),
            ),
            SizedBox(height: AppSizes.h16),

            Text(
              s.deleteNotificationsConfirm(ids.length),
              style: TextStyle(
                fontSize: AppSizes.sp18,
                fontWeight: FontWeight.w700,
                color: colors.textPrimary,
              ),
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              s.actionCannotBeUndone,
              style: TextStyle(
                fontSize: AppSizes.sp14,
                color: colors.textHint,
              ),
            ),
            SizedBox(height: AppSizes.h24),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: AppSizes.h14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSizes.r12),
                      ),
                      side: BorderSide(color: colors.border),
                      foregroundColor: colors.textPrimary,
                    ),
                    child: Text(s.cancel),
                  ),
                ),
                SizedBox(width: AppSizes.w12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context
                          .read<NotificationBloc>()
                          .add(BulkDeleteEvent(ids));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.error,
                      foregroundColor: colors.textOnPrimary,
                      padding:
                          EdgeInsets.symmetric(vertical: AppSizes.h14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSizes.r12),
                      ),
                    ),
                    child: Text(
                      s.delete,
                      style: const TextStyle(fontWeight: FontWeight.w700),
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

  // ─────────────────────────────────────────────────────────────────────────
  // Snack bar
  // ─────────────────────────────────────────────────────────────────────────

  void _showSnackBar(BuildContext context, String message) {
    final colors = context.myColors;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              Icons.check_circle_rounded,
              color: colors.textOnPrimary,
              size: AppSizes.sp18,
            ),
            SizedBox(width: AppSizes.w8),
            Text(message),
          ],
        ),
        backgroundColor: colors.success,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(AppSizes.w16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}