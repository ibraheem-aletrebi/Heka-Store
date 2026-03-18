import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/register/register_actions.dart';
import 'package:heka_store/Features/auth/presentation/components/register/register_form.dart';
import 'package:heka_store/Features/auth/presentation/components/register/register_header.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        spacing: AppSizes.h24,
        children: const [RegisterHeader(), RegisterForm(), RegisterActions()],
      ),
    );
  }
}
