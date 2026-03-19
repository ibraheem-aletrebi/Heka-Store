import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class LocationPickerGpsButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onTap;

  const LocationPickerGpsButton({
    super.key,
    required this.isLoading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: AppSizes.w48,
        height: AppSizes.w48,
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r14),
        ),
        child: isLoading
            ? Padding(
                padding: EdgeInsets.all(AppSizes.sp12),
                child: CupertinoActivityIndicator(color: colors.primary),
              )
            : Icon(
                Icons.my_location_rounded,
                color: colors.primary,
                size: AppSizes.sp22,
              ),
      ),
    );
  }
}
