import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';


class ActionPrompt extends StatelessWidget {
  final String prompt;
  final String actionText;
  final VoidCallback onActionTap;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? promptStyle;
  final TextStyle? actionStyle;
  final Color? promptColor;
  final Color? actionColor;
  final MainAxisAlignment alignment;

  const ActionPrompt({
    super.key,
    required this.prompt,
    required this.actionText,
    required this.onActionTap,
    this.prefix,
    this.suffix,
    this.promptStyle,
    this.actionStyle,
    this.promptColor,
    this.actionColor,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.h16),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          if (prefix != null) ...[prefix!, SizedBox(width: AppSizes.w8)],
          Text(
            prompt,
            style:
                promptStyle ??
                AppTextStyles.regular14.copyWith(
                  color: promptColor ?? colors.textSecondary,
                ),
          ),
          TextButton(
            onPressed: onActionTap,
            child: Text(actionText, style: actionStyle),
          ),
          if (suffix != null) ...[SizedBox(width: AppSizes.w8), suffix!],
        ],
      ),
    );
  }
}
