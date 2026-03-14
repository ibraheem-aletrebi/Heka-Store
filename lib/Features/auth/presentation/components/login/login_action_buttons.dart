import 'package:flutter/cupertino.dart';
import 'package:heka_store/Features/auth/presentation/components/social_auth_divider.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginActionButtons extends StatelessWidget {
  const LoginActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return Column(
      children: [
        CustomButton(
          text: translate.login,
          onPressed: () {
            // TODO: Implement login
          },
        ),
        SizedBox(height: AppSizes.h24),
        SocialAuthDivider(text: translate.orLoginWith),
        SizedBox(height: AppSizes.h24),
        CustomButton.outlined(
          text: translate.signInWithGoogle,
          onPressed: () {
            // TODO: Implement Google sign in
          },
          icon: Icon(CupertinoIcons.person_crop_circle_badge_checkmark),
        ),
      ],
    );
  }
}
