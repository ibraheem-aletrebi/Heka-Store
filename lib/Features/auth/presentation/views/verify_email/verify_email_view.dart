import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/Features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/verify_email/verify_email_view_body_bloc_listener.dart';
import 'package:heka_store/core/di/injector.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyEmailBloc(
        email: email,
        verifyOtpUseCase: sl<VerifyEmailOtpUseCase>(),
        resendOtpUseCase: sl<ResendOtpUseCase>(),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: const VerifyEmailViewBodyBlocListener(),
        ),
      ),
    );
  }
}


