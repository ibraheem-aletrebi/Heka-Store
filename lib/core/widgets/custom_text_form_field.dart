import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final Widget? prefix;
  final Widget? suffix;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final int maxLines;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final String? initialValue;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.prefix,
    this.suffix,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.readOnly = false,
    this.focusNode,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.initialValue,
    this.contentPadding,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late final TextEditingController _ctrl;
  late final FocusNode _focus;
  bool _ownCtrl = false;
  bool _ownFocus = false;
  bool _obscure = false;
  bool _hasFocus = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _ctrl =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    _ownCtrl = widget.controller == null;
    _focus = widget.focusNode ?? FocusNode();
    _ownFocus = widget.focusNode == null;
    _obscure = widget.isPassword;
    _error = widget.errorText;
    _focus.addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(CustomTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.errorText != widget.errorText) {
      setState(() => _error = widget.errorText);
    }
  }

  void _onFocusChanged() {
    setState(() => _hasFocus = _focus.hasFocus);
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChanged);
    if (_ownCtrl) _ctrl.dispose();
    if (_ownFocus) _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    final Color borderColor = !widget.enabled
        ? colors.divider
        : _error != null
        ? colors.error
        : _hasFocus
        ? colors.primary
        : colors.divider;

    final Color labelColor = !widget.enabled
        ? colors.textHint
        : _error != null
        ? colors.error
        : _hasFocus
        ? colors.primary
        : colors.textSecondary;

    final Color iconColor = !widget.enabled
        ? colors.textHint
        : _hasFocus
        ? colors.primary
        : colors.textHint;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: AppTextStyles.semiBold13.copyWith(color: labelColor),
          ),
          SizedBox(height: AppSizes.h4),
        ],

        TextFormField(
          controller: _ctrl,
          focusNode: _focus,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          obscureText: _obscure,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          maxLength: widget.maxLength,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          initialValue: widget.controller == null ? null : widget.initialValue,
          onChanged: (v) {
            widget.onChanged?.call(v);
          },
          onFieldSubmitted: widget.onSubmitted,
          validator: (v) {
            final err = widget.validator?.call(v);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) setState(() => _error = err);
            });
            return null;
          },
          style: AppTextStyles.regular14.copyWith(
            color: widget.enabled ? colors.textPrimary : colors.textHint,
          ),
          cursorColor: colors.primary,
          cursorHeight: 20,
          cursorWidth: 1.5,
          cursorRadius: const Radius.circular(1),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTextStyles.regular14.copyWith(color: colors.textHint),
            counterText: '',
            prefixIcon: widget.prefix != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.w14),
                    child: IconTheme(
                      data: IconThemeData(color: iconColor, size: AppSizes.w20),
                      child: widget.prefix!,
                    ),
                  )
                : null,
            prefixIconConstraints: widget.prefix != null
                ? const BoxConstraints(minWidth: 48, minHeight: 48)
                : null,
            suffixIcon: _buildSuffix(iconColor),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 48,
            ),
            contentPadding:
                widget.contentPadding ??
                EdgeInsets.symmetric(
                  horizontal: AppSizes.w16,
                  vertical: AppSizes.h14,
                ),
            filled: true,
            fillColor: widget.enabled
                ? colors.surface
                : colors.surface.withValues(alpha: .6),
            enabledBorder: _border(borderColor),
            focusedBorder: _border(borderColor),
            errorBorder: _border(colors.error),
            focusedErrorBorder: _border(colors.error),
            disabledBorder: _border(colors.divider),
            errorText: null,
            errorStyle: const TextStyle(fontSize: 0, height: 0),
          ),
        ),

        if (_error != null)
          Padding(
            padding: EdgeInsets.only(top: AppSizes.h6, left: AppSizes.w4),
            child: Row(
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 13,
                  color: colors.error,
                ),
                SizedBox(width: AppSizes.w4),
                Flexible(
                  child: Text(
                    _error!,
                    style: AppTextStyles.regular12.copyWith(
                      color: colors.error,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget? _buildSuffix(Color iconColor) {
    if (widget.isPassword) {
      return GestureDetector(
        onTap: () => setState(() => _obscure = !_obscure),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.w14),
          child: Icon(
            _obscure
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            size: AppSizes.w20,
            color: iconColor,
          ),
        ),
      );
    }

    if (widget.suffix != null) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w14),
        child: IconTheme(
          data: IconThemeData(color: iconColor, size: AppSizes.w20),
          child: widget.suffix!,
        ),
      );
    }

    return null;
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: _hasFocus ? 1.5 : 1.0),
    borderRadius: BorderRadius.circular(AppSizes.r12),
  );
}
