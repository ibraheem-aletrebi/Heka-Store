import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const SummaryRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      children: [
        Text(
          label,
          style: AppTextStyles.regular14.copyWith(color: colors.textSecondary),
        ),
        const Spacer(),
        Text(
          value,
          style: AppTextStyles.semiBold14.copyWith(color: colors.textPrimary),
        ),
      ],
    );
  }
}