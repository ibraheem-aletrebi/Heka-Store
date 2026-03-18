import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_password_request/reset_password_request_actions.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_password_request/reset_password_request_form.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetPasswordRequestView extends StatelessWidget {
  const ResetPasswordRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return Column(
      children: [
        AuthTitleBody(
          title: translate.resetPasswordRequestTitle,
          body: translate.resetPasswordRequestBody,
        ),
        SizedBox(height: AppSizes.h32),
        ResetPasswordRequestForm(),
        SizedBox(height: AppSizes.h32),
        ResetPasswordRequestActions(),
      ],
    );
  }
}
