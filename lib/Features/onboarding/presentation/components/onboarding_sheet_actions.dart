import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class OnboardingSheetActions extends StatelessWidget {
  const OnboardingSheetActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: S.of(context).exploreHeka,
          onPressed: () {
            
            context.pushReplacement(AppRoutes.mainLayout);
          },
        ),
        SizedBox(height: AppSizes.h16),
        CustomButton.outlined(
          text: S.of(context).createAccount,
          onPressed: () => context.pushReplacement(AppRoutes.register),
        ),
        SizedBox(height: AppSizes.h20),
        TextButton(
          onPressed: () => context.pushReplacement(AppRoutes.login),
          child: Text(S.of(context).loginToYourAccount),
        ),
      ],
    );
  }
}
