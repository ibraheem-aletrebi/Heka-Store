import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/widgets/custom_otp_field.dart';

class EmailVerifyOtpForm extends StatelessWidget {
  const EmailVerifyOtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.otpError != current.otpError ||
          previous.isOtpDirty != current.isOtpDirty,
      builder: (context, state) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          buildWhen: (previous, current) =>
              previous.languageCode != current.languageCode,
          builder: (context, langState) {
            return Directionality(
              textDirection: langState.languageCode == 'ar'
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: Center(
                child: CustomOTPField(
                  length: 6,
                  errorText: state.isOtpDirty
                      ? state.otpError?.translate(context)
                      : null,
                  onChanged: (value) => context
                      .read<ForgotPasswordBloc>()
                      .add(ForgotPasswordEvent.otpChanged(value)),
                  onCompleted: (value) => context
                      .read<ForgotPasswordBloc>()
                      .add(const ForgotPasswordEvent.otpSubmitted()),
                ),
              ),
            );
          },
        );
      },
    );
  }
}