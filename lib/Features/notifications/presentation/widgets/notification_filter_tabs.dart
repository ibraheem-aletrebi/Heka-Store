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
    final isDark = context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final s = S.of(context);

    return Container(
      decoration: BoxDecoration(
        color: isDark ? colors.surface : colors.background,
        border: Border(bottom: BorderSide(color: colors.divider, width: 1)),
      ),
      child: Row(
        children: [
          _Tab(
            label: s.all,
            isSelected: !unreadOnly,
            onTap: () => onChanged(false),
          ),
          _Tab(
            label: s.unread,
            badge: unreadCount > 0 ? unreadCount.toString() : null,
            isSelected: unreadOnly,
            onTap: () => onChanged(true),
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

  const _Tab({
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min, // ✅ prevents unbounded height
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: AppSizes.h12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: TextStyle(
                      fontSize: AppSizes.sp14,
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w500,
                      color: isSelected ? colors.primary : colors.textHint,
                    ),
                    child: Text(label),
                  ),
                  if (badge != null) ...[
                    SizedBox(width: AppSizes.w6),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w6,
                        vertical: AppSizes.h2,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? colors.primary
                            : colors.textHint.withOpacity(0.3),
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

            // ✅ Use LayoutBuilder to get concrete width, no more infinity issue
            LayoutBuilder(
              builder: (context, constraints) {
                return TweenAnimationBuilder<double>(
                  tween: Tween(
                    begin: isSelected ? 0 : constraints.maxWidth,
                    end: isSelected ? constraints.maxWidth : 0,
                  ),
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  builder: (context, width, _) => Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 2,
                      width: width,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(AppSizes.r4),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
