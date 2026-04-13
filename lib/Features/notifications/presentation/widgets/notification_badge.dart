import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class NotificationBadge extends StatelessWidget {
  final int count;
  final Widget child;

  const NotificationBadge({
    super.key,
    required this.count,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (count > 0)
          Positioned(
            right: -AppSizes.w4,
            top: -AppSizes.h4,
            child: AnimatedScale(
              scale: 1.0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.elasticOut,
              child: Container(
                constraints: BoxConstraints(
                  minWidth: AppSizes.w18,
                  minHeight: AppSizes.h18,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w4,
                  vertical: AppSizes.h2,
                ),
                decoration: BoxDecoration(
                  color: colors.error,
                  borderRadius: BorderRadius.circular(AppSizes.r10),
                  boxShadow: [
                    BoxShadow(
                      color: colors.error.withOpacity(0.4),
                      blurRadius: AppSizes.r6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  border: Border.all(color: colors.surface, width: 1.5),
                ),
                child: Text(
                  count > 99 ? '99+' : count.toString(),
                  style: TextStyle(
                    color: colors.textOnPrimary,
                    fontSize: AppSizes.sp10,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
      ],
    );
  }
}