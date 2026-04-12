import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  Map<String, List<NotificationEntity>> _groupByDate() {
    final Map<String, List<NotificationEntity>> grouped = {};
    final now = DateTime.now();

    for (final n in notifications) {
      final String key;
      final diff = now.difference(n.createdAt);

      if (diff.inDays == 0) {
        key = 'Today';
      } else if (diff.inDays == 1) {
        key = 'Yesterday';
      } else if (diff.inDays < 7) {
        key = 'This Week';
      } else if (diff.inDays < 30) {
        key = 'This Month';
      } else {
        key = 'Earlier';
      }

      grouped.putIfAbsent(key, () => []).add(n);
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    final grouped = _groupByDate();
    final sectionOrder = ['Today', 'Yesterday', 'This Week', 'This Month', 'Earlier'];
    final sections = sectionOrder.where((k) => grouped.containsKey(k)).toList();

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      itemCount: _totalItems(sections, grouped) + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (isLoadingMore &&
            index == _totalItems(sections, grouped)) {
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

        // Resolve which item this index maps to
        int counter = 0;
        for (final section in sections) {
          // Section header
          if (index == counter) {
            return _SectionHeader(label: section);
          }
          counter++;

          // Items in this section
          final items = grouped[section]!;
          for (final item in items) {
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
      total += 1 + (grouped[s]?.length ?? 0); // header + items
    }
    return total;
  }
}

class _SectionHeader extends StatelessWidget {
  final String label;

  const _SectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 6),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: isDark ? Colors.white38 : const Color(0xFF94A3B8),
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Divider(
              color: isDark ? Colors.white12 : const Color(0xFFE2E8F0),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
