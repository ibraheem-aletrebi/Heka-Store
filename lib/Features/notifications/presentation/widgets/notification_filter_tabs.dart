import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class NotificationFilterTabs extends StatelessWidget {
  final bool unreadOnly;
  final int unreadCount;
  final ValueChanged<bool> onChanged;

  const NotificationFilterTabs({
    super.key,
    required this.unreadOnly,
    required this.unreadCount,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final s = S.of(context);

    return Container(
      margin: EdgeInsets.fromLTRB(
        AppSizes.w16,
        AppSizes.h8,
        AppSizes.w16,
        AppSizes.h4,
      ),
      padding: EdgeInsets.all(AppSizes.r4),
      decoration: BoxDecoration(
        color: isDark ? colors.surface : colors.background,
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: Row(
        children: [
          _Tab(
            label: s.all,
            isSelected: !unreadOnly,
            onTap: () => onChanged(false),
            isDark: isDark,
          ),
          _Tab(
            label: s.unread,
            badge: unreadCount > 0 ? unreadCount.toString() : null,
            isSelected: unreadOnly,
            onTap: () => onChanged(true),
            isDark: isDark,
          ),
        ],
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final String? badge;
  final VoidCallback onTap;
  final bool isDark;

  const _Tab({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.isDark,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: AppSizes.h10),
          decoration: BoxDecoration(
            color: isSelected
                ? (isDark ? colors.card : colors.surface)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.r8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: colors.shadow.withOpacity(isDark ? 0.3 : 0.06),
                      blurRadius: AppSizes.r4,
                    ),
                  ]
                : [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: AppSizes.sp13,
                  fontWeight:
                      isSelected ? FontWeight.w700 : FontWeight.w500,
                  color: isSelected
                      ? (isDark ? colors.textPrimary : colors.textPrimary)
                      : colors.textHint,
                ),
              ),
              if (badge != null) ...[
                SizedBox(width: AppSizes.w6),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w6,
                    vertical: AppSizes.h2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.error,
                    borderRadius: BorderRadius.circular(AppSizes.r10),
                  ),
                  child: Text(
                    badge!,
                    style: TextStyle(
                      fontSize: AppSizes.sp10,
                      fontWeight: FontWeight.w700,
                      color: colors.textOnPrimary,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}