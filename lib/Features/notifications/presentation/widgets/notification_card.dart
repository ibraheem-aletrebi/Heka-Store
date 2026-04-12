import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../domain/entities/notification_entity.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import 'notification_type_helper.dart';

class NotificationCard extends StatefulWidget {
  final NotificationEntity notification;
  final bool isSelectionMode;
  final bool isSelected;

  const NotificationCard({
    super.key,
    required this.notification,
    this.isSelectionMode = false,
    this.isSelected = false,
  });

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnim = Tween<double>(begin: 1.0, end: 0.97).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final n = widget.notification;
    final typeColor = NotificationTypeHelper.getColor(n.type);
    final typeIcon = NotificationTypeHelper.getIcon(n.type);
    final lightColor = NotificationTypeHelper.getLightColor(n.type);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) {
        _controller.reverse();
        _handleTap(context);
      },
      onTapCancel: () => _controller.reverse(),
      onLongPress: () {
        if (!widget.isSelectionMode) {
          context.read<NotificationBloc>().add(const ToggleSelectionModeEvent());
          context
              .read<NotificationBloc>()
              .add(ToggleSelectNotificationEvent(n.id));
        }
      },
      child: ScaleTransition(
        scale: _scaleAnim,
        child: Dismissible(
          key: Key('notification_${n.id}'),
          direction: DismissDirection.endToStart,
          background: _buildDismissBackground(),
          onDismissed: (_) {
            context
                .read<NotificationBloc>()
                .add(DeleteNotificationEvent(n.id));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: widget.isSelected
                  ? typeColor.withOpacity(0.08)
                  : n.isRead
                      ? (isDark
                          ? const Color(0xFF1E293B)
                          : Colors.white)
                      : (isDark
                          ? const Color(0xFF1E293B)
                          : Colors.white),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: widget.isSelected
                    ? typeColor
                    : !n.isRead
                        ? typeColor.withOpacity(0.3)
                        : Colors.transparent,
                width: widget.isSelected ? 2 : 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isDark ? 0.3 : 0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Selection checkbox or type icon
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: widget.isSelectionMode
                        ? _buildCheckbox(typeColor)
                        : _buildTypeIcon(typeIcon, typeColor, lightColor, n),
                  ),
                  const SizedBox(width: 12),
                  // Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                n.title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: n.isRead
                                      ? FontWeight.w500
                                      : FontWeight.w700,
                                  color: isDark
                                      ? Colors.white
                                      : const Color(0xFF0F172A),
                                  letterSpacing: -0.2,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              timeago.format(n.createdAt, allowFromNow: true),
                              style: TextStyle(
                                fontSize: 11,
                                color: isDark
                                    ? Colors.white38
                                    : const Color(0xFF94A3B8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          n.message,
                          style: TextStyle(
                            fontSize: 13,
                            color: isDark
                                ? Colors.white60
                                : const Color(0xFF64748B),
                            height: 1.4,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            _buildTypeChip(n.type, typeColor, lightColor),
                            const Spacer(),
                            if (!n.isRead)
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: typeColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: typeColor.withOpacity(0.4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTypeIcon(
    IconData icon,
    Color color,
    Color lightColor,
    NotificationEntity n,
  ) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: color, size: 22),
    );
  }

  Widget _buildCheckbox(Color color) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: widget.isSelected ? color : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: widget.isSelected ? color : const Color(0xFFCBD5E1),
          width: 2,
        ),
      ),
      child: widget.isSelected
          ? const Icon(Icons.check_rounded, color: Colors.white, size: 22)
          : null,
    );
  }

  Widget _buildTypeChip(
      NotificationType type, Color color, Color lightColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        NotificationTypeHelper.getLabel(type),
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: color,
          letterSpacing: 0.3,
        ),
      ),
    );
  }

  Widget _buildDismissBackground() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFEF4444),
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.delete_rounded, color: Colors.white, size: 24),
          const SizedBox(height: 4),
          Text(
            'Delete',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _handleTap(BuildContext context) {
    final n = widget.notification;
    if (widget.isSelectionMode) {
      context
          .read<NotificationBloc>()
          .add(ToggleSelectNotificationEvent(n.id));
    } else {
      if (!n.isRead) {
        context.read<NotificationBloc>().add(MarkAsReadEvent(n.id));
      }
    }
  }
}
