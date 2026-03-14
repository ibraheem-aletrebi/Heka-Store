import 'package:flutter/material.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_sheet_actions.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_sheet_body.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_sheet_header.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class OnboardingSheet extends StatelessWidget {
  const OnboardingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.52,
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
          vertical: AppSizes.h24,
        ),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: const Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            OnboardingSheetHeader(),
            OnboardingSheetBody(),
            OnboardingSheetActions(),
          ],
        ),
      ),
    );
  }
}
