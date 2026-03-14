import 'package:flutter/material.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_language_switcher_button.dart';
import 'package:heka_store/core/widgets/logo.dart';

class OnboardingSheetHeader extends StatelessWidget {
  const OnboardingSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [const Logo(), const OnboardingLanguageSwitcherButton()],
    );
  }
}
