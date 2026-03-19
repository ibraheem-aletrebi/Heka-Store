import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/components/layout/cart_badge.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';


class NavIcon extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final bool showBadge;
  final int count;

  const NavIcon({
    super.key,
    required this.isSelected,
    required this.icon,
    this.showBadge = false,
    this.count = 0,
  });

  @override
  Widget build(BuildContext context) {
    final primary = context.myColors.primary;
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          switchInCurve: Curves.easeInOut,
          child: Icon(
            icon,
            key: ValueKey(isSelected),
            size: isSelected ? AppSizes.sp24 : AppSizes.sp22,
            color: isSelected ? primary : context.myColors.textSecondary,
          ),
        ),

        if (showBadge)
          Positioned(
            top: -4,
            right: isRtl ? null : -8,
            left: isRtl ? -8 : null,
            child: CartBadge(count: count),
          ),
      ],
    );
  }
}
