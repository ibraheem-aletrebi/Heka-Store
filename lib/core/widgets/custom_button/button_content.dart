import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/button_loading_indicator.dart';

class ButtonContent extends StatelessWidget {
  final String text;
  final bool isLoading;
  final Widget? icon;
  final Widget? trailingIcon;
  final Color textColor;
  final TextStyle textStyle;
  final double iconSize;

  const ButtonContent({super.key, 
    required this.text,
    required this.isLoading,
    required this.textColor,
    required this.textStyle,
    required this.iconSize,
    this.icon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null && !isLoading) ...[
          IconTheme(
            data: IconThemeData(color: textColor, size: iconSize),
            child: icon!,
          ),
          SizedBox(width: AppSizes.w8),
        ],

        Flexible(
          fit: FlexFit.loose,
          child: Text(
            text,
            style: textStyle.copyWith(color: textColor),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),

        if (isLoading) ...[
          SizedBox(width: AppSizes.w8),
          ButtonLoadingIndicator(color: textColor),
        ] else if (trailingIcon != null) ...[
          SizedBox(width: AppSizes.w8),
          IconTheme(
            data: IconThemeData(color: textColor, size: iconSize),
            child: trailingIcon!,
          ),
        ],
      ],
    );
  }
}
