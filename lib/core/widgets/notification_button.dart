import 'package:flutter/cupertino.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: AppSizes.w40,
            height: AppSizes.w40,
            decoration: BoxDecoration(
              color: context.myColors.surface,
              borderRadius: BorderRadius.circular(AppSizes.r12),
            ),
            child: Icon(
              CupertinoIcons.bell_fill,
              size: AppSizes.sp22,
              color: context.myColors.textPrimary,
            ),
          ),
          Positioned(
            top: AppSizes.w8,
            right: AppSizes.w8,
            child: Container(
              width: AppSizes.w8,
              height: AppSizes.w8,
              decoration: BoxDecoration(
                color: context.myColors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: context.myColors.surface, width: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
