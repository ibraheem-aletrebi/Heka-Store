import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_assets.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      child: Image.asset(AppAssets.onboardingBg, fit: BoxFit.cover),
    );
  }
}
