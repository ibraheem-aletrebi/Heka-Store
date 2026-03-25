import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';


class QuantityControl extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const QuantityControl({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      children: [
        QtyButton(icon: Icons.remove_rounded, onTap: onDecrease, filled: false),
        SizedBox(
          width: 28,
          child: Text(
            '$quantity',
            style: AppTextStyles.semiBold14.copyWith(color: colors.textPrimary),
            textAlign: TextAlign.center,
          ),
        ),
        QtyButton(icon: Icons.add_rounded, onTap: onIncrease, filled: true),
      ],
    );
  }
}

class QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool filled;

  const QtyButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.filled,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          color: filled ? colors.primary : colors.background,
          borderRadius: BorderRadius.circular(AppSizes.r8),
          border: filled ? null : Border.all(color: colors.divider, width: 1),
        ),
        child: Icon(
          icon,
          size: 14,
          color: filled ? Colors.white : colors.textSecondary,
        ),
      ),
    );
  }
}
