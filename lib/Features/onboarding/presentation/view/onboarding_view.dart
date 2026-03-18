import 'package:flutter/material.dart';
import 'package:heka_store/Features/onboarding/presentation/components/onboarding_view_body.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/services/local/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    sl<LocalStorageService>().setValue<bool>(
      LocalStorageKeys.hasSeenOnboarding,
      true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnboardingViewBody()));
  }
}
