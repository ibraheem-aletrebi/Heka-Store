import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w8,
        vertical: AppSizes.h4,
      ),
      decoration: BoxDecoration(
        color: context.myColors.primary.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Text(
        S.of(context).bestSeller,
        style: TextTheme.of(context).titleSmall?.copyWith(color: Colors.white),
      ),
    );
  }
}
