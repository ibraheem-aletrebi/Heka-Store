import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/verify_otp/email_verify_otp_form.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/verify_otp/reset_password_otp_actions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetPasswordOtpView extends StatelessWidget {
  const ResetPasswordOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return Column(
      children: [
        AuthTitleBody(
          title: translate.resetPasswordOtpTitle,
          body: translate.resetPasswordOtpBody,
        ),
        SizedBox(height: AppSizes.h32),
        Center(child: EmailVerifyOtpForm()),
        SizedBox(height: AppSizes.h32),
        ResetPasswordOtpActions(),
      ],
    );
  }
}
