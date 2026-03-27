import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';
import 'package:heka_store/core/widgets/notification_button.dart';
import 'package:heka_store/generated/l10n.dart';

class EditProfileViewAppBar extends StatelessWidget {
  const EditProfileViewAppBar({super.key});

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
                onPressed: () => context.pop(),
                icon: Icons.chevron_left_rounded,
              ),
              Expanded(
                child: Text(
                  S.of(context).EditProfile,
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
