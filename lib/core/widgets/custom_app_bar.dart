import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';
import 'package:heka_store/core/widgets/notification_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onBackPressed, required this.title});
  final VoidCallback onBackPressed ;
  final String title;
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h12,
          ),
          child: Row(
            children: [
              CustomIconButton(
                onPressed: onBackPressed,
                icon: Icons.chevron_left_rounded,
              ),
              Expanded(
                child: Text(
                  title,
                  style: textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              NotificationButton(),
            ],
          ),
        ),
        Divider(height: 2),
      ],
    );
  }
}