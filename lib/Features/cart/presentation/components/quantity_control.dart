import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class QuantityControl extends StatelessWidget {
  final int quantity;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;
  final double? iconSize;
  final double? buttonSize;
  final bool? richEnd;

  const QuantityControl({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
    this.iconSize,
    this.buttonSize,
    this.richEnd = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      children: [
        QtyButton(
          icon: Icons.remove_rounded,
          onTap: onDecrease,
          filled: false,
          buttonSize: buttonSize,
        ),
        SizedBox(
          width: AppSizes.w24,
          child: Text(
            '$quantity',
            style: AppTextStyles.semiBold14.copyWith(color: colors.textPrimary),
            textAlign: TextAlign.center,
          ),
        ),
        QtyButton(
          icon: Icons.add_rounded,
          onTap: onIncrease,
          filled: true,
          buttonSize: buttonSize,
          backgroundColor: richEnd ?? false ? colors.textHint : null,
        ),
      ],
    );
  }
}

class QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool filled;
  final double? iconSize;
  final double? buttonSize;
  final Color? backgroundColor;
  const QtyButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.filled,
    this.iconSize,
    this.buttonSize,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize ?? AppSizes.w38,
        height: buttonSize ?? AppSizes.w38,
        decoration: BoxDecoration(
          color:
              backgroundColor ?? (filled ? colors.primary : colors.background),
          borderRadius: BorderRadius.circular(AppSizes.r8),
          border: filled ? null : Border.all(color: colors.divider, width: 1),
        ),
        child: Icon(
          icon,
          size: iconSize ?? AppSizes.sp16,
          color: filled ? Colors.white : colors.textSecondary,
        ),
      ),
    );
  }
}
