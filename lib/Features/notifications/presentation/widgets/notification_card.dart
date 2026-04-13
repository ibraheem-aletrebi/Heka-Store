import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
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
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final typeColor = NotificationTypeHelper.getColor(n.type);
    final typeIcon = NotificationTypeHelper.getIcon(n.type);
    final lightColor = NotificationTypeHelper.getLightColor(n.type);

    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) {
        _controller.reverse();
        _handleTap(context);
      },
      onTapCancel: () => _controller.reverse(),
      onLongPress: () {
        if (!widget.isSelectionMode) {
          context
              .read<NotificationBloc>()
              .add(const ToggleSelectionModeEvent());
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
          background: _buildDismissBackground(context),
          onDismissed: (_) =>
              context.read<NotificationBloc>().add(DeleteNotificationEvent(n.id)),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.h4,
            ),
            decoration: BoxDecoration(
              color: widget.isSelected
                  ? typeColor.withOpacity(0.08)
                  : isDark
                      ? colors.surface
                      : colors.surface,
              borderRadius: BorderRadius.circular(AppSizes.r16),
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
                  color: colors.shadow.withOpacity(isDark ? 0.3 : 0.06),
                  blurRadius: AppSizes.r8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(AppSizes.w16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: widget.isSelectionMode
                        ? _buildCheckbox(typeColor, colors)
                        : _buildTypeIcon(typeIcon, typeColor, lightColor),
                  ),
                  SizedBox(width: AppSizes.w12),
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
                                  fontSize: AppSizes.sp14,
                                  fontWeight: n.isRead
                                      ? FontWeight.w500
                                      : FontWeight.w700,
                                  color: colors.textPrimary,
                                  letterSpacing: -0.2,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: AppSizes.w8),
                            Text(
                              timeago.format(n.createdAt, allowFromNow: true),
                              style: TextStyle(
                                fontSize: AppSizes.sp11,
                                color: colors.textHint,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.h4),
                        Text(
                          n.message,
                          style: TextStyle(
                            fontSize: AppSizes.sp13,
                            color: colors.textSecondary,
                            height: 1.4,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: AppSizes.h8),
                        Row(
                          children: [
                            _buildTypeChip(n.type, typeColor, lightColor, context),
                            const Spacer(),
                            if (!n.isRead)
                              Container(
                                width: AppSizes.w8,
                                height: AppSizes.h8,
                                decoration: BoxDecoration(
                                  color: typeColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: typeColor.withOpacity(0.4),
                                      blurRadius: AppSizes.r4,
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

  Widget _buildTypeIcon(IconData icon, Color color, Color lightColor) {
    return Container(
      width: AppSizes.w45,
      height: AppSizes.h48,
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: Icon(icon, color: color, size: AppSizes.sp22),
    );
  }

  Widget _buildCheckbox(Color color, dynamic colors) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: AppSizes.w45,
      height: AppSizes.h48,
      decoration: BoxDecoration(
        color: widget.isSelected ? color : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(
          color: widget.isSelected ? color : colors.border,
          width: 2,
        ),
      ),
      child: widget.isSelected
          ? Icon(
              Icons.check_rounded,
              color: colors.textOnPrimary,
              size: AppSizes.sp22,
            )
          : null,
    );
  }

  Widget _buildTypeChip(
    NotificationType type,
    Color color,
    Color lightColor,
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w8,
        vertical: AppSizes.h4 - 1,
      ),
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(AppSizes.r20),
      ),
      child: Text(
        NotificationTypeHelper.getLabel(type, context: context),
        style: TextStyle(
          fontSize: AppSizes.sp10,
          fontWeight: FontWeight.w600,
          color: color,
          letterSpacing: 0.3,
        ),
      ),
    );
  }

  Widget _buildDismissBackground(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h4,
      ),
      decoration: BoxDecoration(
        color: colors.error,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: AppSizes.w20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.delete_rounded, color: colors.textOnPrimary, size: AppSizes.sp24),
          SizedBox(height: AppSizes.h4),
          Text(
            s.delete,
            style: TextStyle(
              color: colors.textOnPrimary,
              fontSize: AppSizes.sp11,
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