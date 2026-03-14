import 'package:flutter/material.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_background.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_sheet.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [const OnboardingBackground(), const OnboardingSheet()],
    );
  }
}
