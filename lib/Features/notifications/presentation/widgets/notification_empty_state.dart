import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class NotificationEmptyState extends StatelessWidget {
  final bool unreadOnly;

  const NotificationEmptyState({super.key, this.unreadOnly = false});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
    final s = S.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: AppSizes.w100,
              height: AppSizes.h100,
              decoration: BoxDecoration(
                color: isDark ? colors.surface : colors.background,
                shape: BoxShape.circle,
              ),
              child: Icon(
                unreadOnly
                    ? Icons.mark_email_read_rounded
                    : Icons.notifications_off_rounded,
                size: AppSizes.w45,
                color: isDark ? colors.textHint : colors.border,
              ),
            ),
            SizedBox(height: AppSizes.h24),
            Text(
              unreadOnly ? s.allCaughtUp : s.noNotificationsYet,
              style: TextStyle(
                fontSize: AppSizes.sp20,
                fontWeight: FontWeight.w700,
                color: colors.textPrimary,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              unreadOnly
                  ? s.noUnreadNotifications
                  : s.notificationsWillAppearHere,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.sp14,
                color: colors.textHint,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Shimmer Loading
// ─────────────────────────────────────────────────────────────────────────────

class NotificationShimmerLoading extends StatefulWidget {
  const NotificationShimmerLoading({super.key});

  @override
  State<NotificationShimmerLoading> createState() =>
      _NotificationShimmerLoadingState();
}

class _NotificationShimmerLoadingState
    extends State<NotificationShimmerLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: -1.0, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: AppSizes.h8),
      itemCount: 6,
      itemBuilder: (_, i) => _ShimmerCard(animation: _animation),
    );
  }
}

class _ShimmerCard extends StatelessWidget {
  final Animation<double> animation;

  const _ShimmerCard({required this.animation});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isDark =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;

    final baseColor = isDark ? colors.surface : colors.background;
    final highlightColor = isDark ? colors.card : colors.border;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h4 + 1,
          ),
          padding: EdgeInsets.all(AppSizes.w16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.r16),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [baseColor, highlightColor, baseColor],
              stops: [
                (animation.value - 1).clamp(0.0, 1.0),
                animation.value.clamp(0.0, 1.0),
                (animation.value + 1).clamp(0.0, 1.0),
              ],
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppSizes.w45,
                height: AppSizes.h48,
                decoration: BoxDecoration(
                  color: baseColor,
                  borderRadius: BorderRadius.circular(AppSizes.r12),
                ),
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _bar(baseColor, double.infinity, AppSizes.h14),
                    SizedBox(height: AppSizes.h8),
                    _bar(baseColor, AppSizes.w150, AppSizes.h12),
                    SizedBox(height: AppSizes.h6),
                    _bar(baseColor, AppSizes.w120, AppSizes.h12),
                    SizedBox(height: AppSizes.h10),
                    _bar(baseColor, AppSizes.w60, AppSizes.h20),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bar(Color color, double width, double height) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(height / 2),
        ),
      );
}