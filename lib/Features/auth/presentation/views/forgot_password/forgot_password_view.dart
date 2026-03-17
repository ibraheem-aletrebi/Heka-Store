import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.w16),
            // child: const ForgotPasswordFlow(),
          ),
        ),
      );
  }
}
