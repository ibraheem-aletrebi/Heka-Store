import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import '../../domain/entities/notification_entity.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import 'notification_card.dart';
import 'notification_detail_sheet.dart';

class GroupedNotificationList extends StatelessWidget {
  final List<NotificationEntity> notifications;
  final bool isSelectionMode;
  final Set<int> selectedIds;
  final bool isLoadingMore;
  final bool hasNextPage;
  final ScrollController scrollController;

  const GroupedNotificationList({
    super.key,
    required this.notifications,
    required this.isSelectionMode,
    required this.selectedIds,
    required this.isLoadingMore,
    required this.hasNextPage,
    required this.scrollController,
  });

  Map<String, List<NotificationEntity>> _groupByDate(S s) {
    final Map<String, List<NotificationEntity>> grouped = {};
    final now = DateTime.now();

    for (final n in notifications) {
      final diff = now.difference(n.createdAt);
      final String key;

      if (diff.inDays == 0) {
        key = s.today;
      } else if (diff.inDays == 1) {
        key = s.yesterday;
      } else if (diff.inDays < 7) {
        key = s.thisWeek;
      } else if (diff.inDays < 30) {
        key = s.thisMonth;
      } else {
        key = s.earlier;
      }

      grouped.putIfAbsent(key, () => []).add(n);
    }
    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);
    final grouped = _groupByDate(s);

    final sectionOrder = [s.today, s.yesterday, s.thisWeek, s.thisMonth, s.earlier];
    final sections = sectionOrder.where((k) => grouped.containsKey(k)).toList();

    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.only(top: AppSizes.h8, bottom: AppSizes.h24),
      itemCount: _totalItems(sections, grouped) + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        // Loading indicator at the bottom
        if (isLoadingMore && index == _totalItems(sections, grouped)) {
          return Padding(
            padding: EdgeInsets.all(AppSizes.w16),
            child: Center(
              child: SizedBox(
                width: AppSizes.w24,
                height: AppSizes.h24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: colors.primary,
                ),
              ),
            ),
          );
        }

        int counter = 0;
        for (final section in sections) {
          if (index == counter) return _SectionHeader(label: section);
          counter++;

          for (final item in grouped[section]!) {
            if (index == counter) {
              return GestureDetector(
                onTap: isSelectionMode
                    ? null
                    : () {
                        if (!item.isRead) {
                          context
                              .read<NotificationBloc>()
                              .add(MarkAsReadEvent(item.id));
                        }
                        NotificationDetailSheet.show(context, item);
                      },
                child: NotificationCard(
                  notification: item,
                  isSelectionMode: isSelectionMode,
                  isSelected: selectedIds.contains(item.id),
                ),
              );
            }
            counter++;
          }
        }
        return const SizedBox.shrink();
      },
    );
  }

  int _totalItems(
    List<String> sections,
    Map<String, List<NotificationEntity>> grouped,
  ) {
    int total = 0;
    for (final s in sections) {
      total += 1 + (grouped[s]?.length ?? 0);
    }
    return total;
  }
}

class _SectionHeader extends StatelessWidget {
  final String label;
  const _SectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSizes.w20,
        AppSizes.h16,
        AppSizes.w20,
        AppSizes.h6,
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: AppSizes.sp12,
              fontWeight: FontWeight.w700,
              color: isDark ? colors.textHint : colors.textHint,
              letterSpacing: 0.8,
            ),
          ),
          SizedBox(width: AppSizes.w10),
          Expanded(
            child: Divider(
              color: isDark
                  ? colors.divider.withOpacity(0.3)
                  : colors.divider,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}