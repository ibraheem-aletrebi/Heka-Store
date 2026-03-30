import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class LocationRow extends StatelessWidget {
  final String location;
  final VoidCallback? onTap;

  const LocationRow({super.key, required this.location, this.onTap});

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(Icons.location_on_rounded, color: c.primary, size: 13),
          SizedBox(width: AppSizes.w2),
          Flexible(
            child: Text(
              location,
              style: AppTextStyles.semiBold12.copyWith(color: c.textPrimary),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: AppSizes.w2),
          Icon(Icons.keyboard_arrow_down_rounded, size: AppSizes.sp16),
        ],
      ),
    );
  }
}
