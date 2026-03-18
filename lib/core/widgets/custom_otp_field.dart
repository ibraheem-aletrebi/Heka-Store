import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:pinput/pinput.dart';

class CustomOTPField extends StatelessWidget {
  final int length;
  final TextEditingController? controller;
  final String? errorText;
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final TextDirection? textDirection;
  final Color? cursorColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? submittedBackgroundColor;

  const CustomOTPField({
    super.key,
    this.controller,
    this.errorText,
    this.onCompleted,
    this.onChanged,
    this.length = 4,
    this.textDirection,
    this.cursorColor,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.submittedBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final defaultPinTheme = PinTheme(
      width: width ?? AppSizes.w48,
      height: height ?? AppSizes.w48,
      textStyle: theme.textTheme.titleLarge,
      decoration: BoxDecoration(
        color: backgroundColor ?? colorScheme.surface,
        borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.r12),
        border: Border.all(
          color: errorText != null
              ? errorBorderColor ?? colorScheme.error
              : borderColor ?? colorScheme.outline,
          width: 2,
        ),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(
          color: focusedBorderColor ?? colorScheme.primary,
          width: 2,
        ),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: submittedBackgroundColor ?? colorScheme.surface,
        border: Border.all(
          color: errorText != null
              ? errorBorderColor ?? colorScheme.error
              : focusedBorderColor ?? colorScheme.primary,
          width: 2,
        ),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(
          color: errorBorderColor ?? colorScheme.error,
          width: 2,
        ),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ─── OTP Field ────────────────────────────────
        Pinput(
          controller: controller,
          length: length,
          separatorBuilder: (index) => const SizedBox(width: 8),
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          errorPinTheme: errorPinTheme,
          forceErrorState: errorText != null,
          onCompleted: onCompleted,
          onChanged: onChanged,
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          cursor: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: AppSizes.w24,
                height: 2,
                color: cursorColor ?? colorScheme.primary,
              ),
            ],
          ),
        ),

        // ─── Error Text ───────────────────────────────
        if (errorText != null)
          Padding(
            padding: EdgeInsets.only(top: AppSizes.h6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 13,
                  color: colorScheme.error,
                ),
                SizedBox(width: AppSizes.w4),
                Text(
                  errorText!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.error,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}