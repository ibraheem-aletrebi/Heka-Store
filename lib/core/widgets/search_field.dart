import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class SearchField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  final VoidCallback? onClear;
  final VoidCallback? onTap;
  final bool autoFocus;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool showClearButton;
  final TextInputAction? textInputAction;       
  final void Function(String)? onSubmitted;     

  const SearchField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onClear,
    this.onTap,
    this.autoFocus = false,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.showClearButton = true,
    this.textInputAction,
    this.onSubmitted,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  void _onTextChanged() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: widget.fillColor ?? colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r14),
        border: Border.all(color: colors.border),
      ),
      child: TextField(
        controller: widget.controller,
        autofocus: widget.autoFocus,
        style: AppTextStyles.regular14.copyWith(color: colors.textPrimary),
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        textInputAction: widget.textInputAction ?? TextInputAction.search,
        onSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppTextStyles.regular14.copyWith(color: colors.textHint),
          border: InputBorder.none,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 12, right: 8),
                  child: Icon(
                    widget.prefixIcon,
                    size: AppSizes.w20,
                    color: colors.textHint,
                  ),
                )
              : null,
          prefixIconConstraints: widget.prefixIcon != null
              ? const BoxConstraints(minWidth: 44, minHeight: 44)
              : null,
          suffixIcon: _buildSuffix(colors),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 44,
            minHeight: 44,
          ),
        ),
      ),
    );
  }

  Widget? _buildSuffix(dynamic colors) {
    if (widget.suffixIcon != null) return widget.suffixIcon;
    if (!widget.showClearButton || widget.controller.text.isEmpty) return null;

    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: IconButton(
        splashRadius: 18,
        icon: Icon(Icons.close, size: 18, color: colors.textHint),
        onPressed: () {
          widget.controller.clear();
          widget.onClear?.call();
        },
      ),
    );
  }
}