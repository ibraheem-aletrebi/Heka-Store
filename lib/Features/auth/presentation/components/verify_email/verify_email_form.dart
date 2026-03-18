import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/widgets/custom_otp_field.dart';

class VerifyEmailForm extends StatefulWidget {
  const VerifyEmailForm({super.key});

  @override
  State<VerifyEmailForm> createState() => _VerifyEmailFormState();
}

class _VerifyEmailFormState extends State<VerifyEmailForm> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailBloc, VerifyEmailState>(
      listenWhen: (previous, current) =>
          previous.isResendSuccess != current.isResendSuccess,
      listener: (context, state) {
        if (state.isResendSuccess) {
          _controller.clear();
        }
      },
      child: BlocBuilder<LanguageBloc, LanguageState>(
        buildWhen: (previous, current) =>
            previous.languageCode != current.languageCode,
        builder: (context, langState) {
          return BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
            buildWhen: (previous, current) =>
                previous.otpError != current.otpError ||
                previous.isOtpDirty != current.isOtpDirty,
            builder: (context, state) {
              return Directionality(
                textDirection: langState.languageCode == 'ar'
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: Center(
                  child: CustomOTPField(
                    length: 6,
                    controller: _controller,
                    errorText: state.isOtpDirty
                        ? state.otpError?.translate(context)
                        : null,
                    onChanged: (value) => context.read<VerifyEmailBloc>().add(
                      VerifyEmailEvent.otpChanged(value),
                    ),
                    onCompleted: (value) => context.read<VerifyEmailBloc>().add(
                      const VerifyEmailEvent.otpSubmitted(),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
