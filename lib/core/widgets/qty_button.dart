import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const QtyButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppSizes.w38,
        height: AppSizes.w38,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: AppSizes.sp20,
          color: onTap != null ? colors.primary : colors.border,
        ),
      ),
    );
  }
}