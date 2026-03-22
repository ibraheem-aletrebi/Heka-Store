import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/font_weight_helper.dart';
import 'package:heka_store/generated/l10n.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAll;
  final String? seeAllText;
  final TextStyle? titleStyle;
  final TextStyle? seeAllStyle;
  final EdgeInsetsGeometry? padding;

  const SectionHeader({
    super.key,
    required this.title,
    this.onSeeAll,
    this.seeAllText,
    this.titleStyle,
    this.seeAllStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: AppSizes.w16),
      child: Row(
        children: [
          Text(title, style: titleStyle ?? textTheme.titleMedium),
          const Spacer(),
          if (onSeeAll != null)
            GestureDetector(
              onTap: onSeeAll,
              child: Text(
                seeAllText ?? S.of(context).viewAll,
                style:
                    seeAllStyle ??
                    textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      color: context.myColors.primary,
                      height: 1.6,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
