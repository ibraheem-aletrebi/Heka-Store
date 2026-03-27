import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomIconButton(icon: Icons.notifications_rounded, onPressed: () {}),
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
