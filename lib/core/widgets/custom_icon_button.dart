import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
    this.size,
    this.borderRadius,
    this.padding,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        padding: padding,
        backgroundColor: backgroundColor ?? context.myColors.surface,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(size ?? AppSizes.w38, size ?? AppSizes.w38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.r12),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor ?? context.myColors.textPrimary,
        size: AppSizes.sp22,
      ),
    );
  }
}
