import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/resend_otp_button.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetPasswordOtpActions extends StatelessWidget {
  const ResetPasswordOtpActions({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        // ─── Verify Button ────────────────────────────
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (previous, current) =>
              previous.isOtpLoading != current.isOtpLoading ||
              previous.isOtpFormValid != current.isOtpFormValid,
          builder: (context, state) {
            return CustomButton(
              enabled: state.isOtpFormValid,
              isLoading: state.isOtpLoading,
              text: translate.verify,
              onPressed: state.isOtpLoading
                  ? null
                  : () => context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.otpSubmitted(),
                    ),
            );
          },
        ),
        SizedBox(height: AppSizes.h32),

        // ─── Resend OTP Button ────────────────────────
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (previous, current) =>
              previous.isResendLoading != current.isResendLoading,
          builder: (context, state) {
            return ResendOtpButton(
              resendText: translate.resendCode,
              isLoading: state.isResendLoading,
              onResend: () => context.read<ForgotPasswordBloc>().add(
                const ForgotPasswordEvent.otpResent(),
              ),
            );
          },
        ),
      ],
    );
  }
}
