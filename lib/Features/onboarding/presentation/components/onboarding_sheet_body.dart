import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class OnboardingSheetBody extends StatelessWidget {
  const OnboardingSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Column(
      children: [
        Text(S.of(context).onboardingTitle, style: textTheme.displaySmall),
        SizedBox(height: AppSizes.h12),
        Text(
          S.of(context).onboardingBody,
          textAlign: TextAlign.center,
          style: textTheme.bodySmall,
        ),
      ],
    );
  }
}
