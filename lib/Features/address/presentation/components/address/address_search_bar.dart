import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const AddressSearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    final s = S.of(context);
    return Container(
      height: AppSizes.h40,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: textTheme.titleSmall?.copyWith(color: colors.textPrimary),
        decoration: InputDecoration(
          hintText: s.searchAddressHint,
          hintStyle: textTheme.bodyMedium?.copyWith(color: colors.textHint),
          prefixIcon: Icon(Icons.search_rounded, size: AppSizes.sp20),
          suffixIcon: controller.text.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    controller.clear();
                    onChanged('');
                  },
                  child: Icon(Icons.cancel_rounded),
                )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: AppSizes.h12),
        ),
      ),
    );
  }
}
