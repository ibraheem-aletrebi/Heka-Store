import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/resend_otp_button.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class VerifyEmailActions extends StatelessWidget {
  const VerifyEmailActions({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
          buildWhen: (previous, current) =>
              previous.isOtpLoading != current.isOtpLoading ||
              previous.isFormValid != current.isFormValid,
          builder: (context, state) {
            return CustomButton(
              isLoading: state.isOtpLoading,
              text: translate.verify,
              onPressed: state.isOtpLoading
                  ? null
                  : () => context
                      .read<VerifyEmailBloc>()
                      .add(const VerifyEmailEvent.otpSubmitted()),
            );
          },
        ),
        SizedBox(height: AppSizes.h32),

        BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
          buildWhen: (previous, current) =>
              previous.isResendLoading != current.isResendLoading,
          builder: (context, state) {
            return ResendOtpButton(
              resendText: translate.resendCode,
              isLoading: state.isResendLoading,
              onResend: () => context
                  .read<VerifyEmailBloc>()
                  .add(const VerifyEmailEvent.otpResent()),
            );
          },
        ),
      ],
    );
  }
}