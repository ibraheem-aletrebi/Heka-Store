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
        height: MediaQuery.of(context).size.height * 0.5,
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
        ),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSizes.r20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
