import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/enums/button/button_size.dart';
import 'package:heka_store/core/enums/button/button_variant.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_button/button_content.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final bool isLoading;
  final bool enabled;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? disabledColor;
  final Color? textColor;
  final Widget? icon;
  final Widget? trailingIcon;
  final double? borderRadius;
  final Color? borderColor;
  final ButtonVariant variant;
  final ButtonSize size;
  final String? semanticLabel;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height,
    this.backgroundColor,
    this.disabledColor,
    this.textColor,
    this.icon,
    this.trailingIcon,
    this.borderRadius,
    this.borderColor,
    this.variant = ButtonVariant.filled,
    this.size = ButtonSize.medium,
    this.semanticLabel,
  });

  const CustomButton.outlined({
    super.key,
    required this.text,
    required this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height,
    this.backgroundColor,
    this.disabledColor,
    this.textColor,
    this.icon,
    this.trailingIcon,
    this.borderRadius,
    this.borderColor,
    this.size = ButtonSize.medium,
    this.semanticLabel,
  }) : variant = ButtonVariant.outlined;

  const CustomButton.text({
    super.key,
    required this.text,
    required this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height,
    this.backgroundColor,
    this.disabledColor,
    this.textColor,
    this.icon,
    this.trailingIcon,
    this.borderRadius,
    this.borderColor,
    this.size = ButtonSize.medium,
    this.semanticLabel,
  }) : variant = ButtonVariant.text;

  const CustomButton.tonal({
    super.key,
    required this.text,
    required this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height,
    this.backgroundColor,
    this.disabledColor,
    this.textColor,
    this.icon,
    this.trailingIcon,
    this.borderRadius,
    this.borderColor,
    this.size = ButtonSize.medium,
    this.semanticLabel,
  }) : variant = ButtonVariant.tonal;

  double get _height {
    if (height != null) return height!;
    return switch (size) {
      ButtonSize.small => AppSizes.h36,
      ButtonSize.medium => AppSizes.h50,
      ButtonSize.large => AppSizes.h56,
    };
  }

  double get _borderRadius => borderRadius ?? AppSizes.r8;

  TextStyle get _textStyle => switch (size) {
    ButtonSize.small => AppTextStyles.semiBold13,
    ButtonSize.medium => AppTextStyles.semiBold15Button,
    ButtonSize.large => AppTextStyles.semiBold16,
  };

  double get _iconSize => switch (size) {
    ButtonSize.small => AppSizes.w16,
    ButtonSize.medium => AppSizes.w20,
    ButtonSize.large => AppSizes.w24,
  };

  Color _resolveBackgroundColor(BuildContext context) {
    final primary = context.myColors.primary;
    return switch (variant) {
      ButtonVariant.filled => backgroundColor ?? primary,
      ButtonVariant.outlined => Colors.transparent,
      ButtonVariant.text => Colors.transparent,
      ButtonVariant.tonal => backgroundColor ?? primary.withValues(alpha: 0.12),
    };
  }

  Color _resolveTextColor(BuildContext context) {
    final primary = context.myColors.primary;
    final effectiveBorderColor = borderColor ?? primary;
    return switch (variant) {
      ButtonVariant.filled => textColor ?? Colors.white,
      ButtonVariant.outlined => textColor ?? effectiveBorderColor,
      ButtonVariant.text => textColor ?? primary,
      ButtonVariant.tonal => textColor ?? primary,
    };
  }

  BorderSide _resolveBorderSide(BuildContext context) {
    final primary = context.myColors.primary;
    return switch (variant) {
      ButtonVariant.outlined => BorderSide(
        color: borderColor ?? primary,
        width: 1.5,
      ),
      _ => BorderSide.none,
    };
  }

  double _resolveElevation() => switch (variant) {
    ButtonVariant.filled => 2,
    _ => 0,
  };

  // ── spinner sized to match the icon slot ─────────────────────────────────
  Widget _buildSpinner(Color color) => SizedBox(
    width: _iconSize,
    height: _iconSize,
    child: CupertinoActivityIndicator(),
  );

  @override
  Widget build(BuildContext context) {
    // isLoading blocks interaction exactly like disabled
    final bool isButtonEnabled = enabled && !isLoading;
    final Color effectiveTextColor = _resolveTextColor(context);

    // ── direction from ambient locale — no extra import needed ───────────
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;
    final spinner = _buildSpinner(effectiveTextColor);

    // ── resolve the icon slot ─────────────────────────────────────────────
    // Rule:
    //   loading + icon exists  → replace icon with spinner, keep text
    //   loading + no icon      → spinner goes BEFORE text in LTR (AFTER in RTL)
    //                            achieved by placing it as the leading icon
    final Widget? resolvedIcon = isLoading
        ? spinner // replaces icon OR acts as leading spinner
        : icon;

    // When there is no icon at all and we are loading, we still want the
    // spinner on the correct side. We pass it as `icon` (leading) for LTR
    // and as `trailingIcon` for RTL so it always appears on the start side
    // relative to reading direction.
    final Widget? resolvedLeading = (!isLoading || icon != null)
        ? resolvedIcon
        : isRtl
        ? null
        : spinner;

    final Widget? resolvedTrailing = isLoading && icon == null && isRtl
        ? spinner
        : (!isLoading ? trailingIcon : null);

    return Semantics(
      label: semanticLabel ?? text,
      button: true,
      enabled: isButtonEnabled,
      child: SizedBox(
        width: width ?? double.infinity,
        height: _height,
        child: ElevatedButton(
          onPressed: isButtonEnabled ? onPressed : null,
          onLongPress: isButtonEnabled ? onLongPress : null,
          style: ElevatedButton.styleFrom(
            elevation: _resolveElevation(),
            backgroundColor: _resolveBackgroundColor(context),
            disabledBackgroundColor:
                disabledColor ?? Theme.of(context).disabledColor,
            shadowColor: variant == ButtonVariant.filled
                ? null
                : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_borderRadius),
              side: _resolveBorderSide(context),
            ),
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
            animationDuration: const Duration(milliseconds: 200),
          ),
          child: ButtonContent(
            text: text,
            // ✅ isLoading=false — we own the spinner rendering above,
            // ButtonContent must not double-render its own loader
            isLoading: false,
            icon: resolvedLeading,
            trailingIcon: resolvedTrailing,
            textColor: effectiveTextColor,
            textStyle: _textStyle,
            iconSize: _iconSize,
          ),
        ),
      ),
    );
  }
}
