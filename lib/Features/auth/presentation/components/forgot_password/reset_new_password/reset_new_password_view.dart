import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_new_password/reset_new_password_actions.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_new_password/reset_new_password_form.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetNewPasswordView extends StatelessWidget {
  const ResetNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          AuthTitleBody(
            title: translate.resetPasswordNewPasswordTitle,
            body: translate.resetPasswordNewPasswordBody,
          ),
          SizedBox(height: AppSizes.h32),
          ResetNewPasswordForm(),
          SizedBox(height: AppSizes.h32),
          ResetNewPasswordActions(),
        ],
      ),
    );
  }
}
