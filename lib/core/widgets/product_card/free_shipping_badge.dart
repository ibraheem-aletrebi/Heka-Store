import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class FreeShippingBadge extends StatelessWidget {
  const FreeShippingBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.local_shipping_outlined,
          size: AppSizes.sp14,
          color: colors.primary,
        ),
        SizedBox(width: AppSizes.w4),
        Text(
          S.of(context).freeShipping,
          style: TextTheme.of(
            context,
          ).bodySmall?.copyWith(color: colors.primary),
        ),
      ],
    );
  }
}
