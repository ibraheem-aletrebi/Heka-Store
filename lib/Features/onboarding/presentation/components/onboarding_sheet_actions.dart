import 'package:flutter/material.dart';
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
          onPressed: (){},
        ),
        SizedBox(height: AppSizes.h16),
        CustomButton.outlined(
          text: S.of(context).createAccount,
          onPressed: (){},
        ),
        SizedBox(height: AppSizes.h20),
        TextButton(
          onPressed: (){},
          child: Text(S.of(context).loginToYourAccount),
        ),
      ],
    );
  }
}