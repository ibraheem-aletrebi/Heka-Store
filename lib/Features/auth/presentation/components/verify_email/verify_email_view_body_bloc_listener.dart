import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/verify_email/verify_email_view_body.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/generated/l10n.dart';

class VerifyEmailViewBodyBlocListener extends StatelessWidget {
  const VerifyEmailViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailBloc, VerifyEmailState>(
      listenWhen: (previous, current) =>
          previous.isOtpSuccess != current.isOtpSuccess ||
          previous.isResendSuccess != current.isResendSuccess ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.isOtpSuccess) {
          final hasAddress =
              state.loginResponse?.data!.user.hasAddress ?? false;
          if (hasAddress) {
            context.go(AppRoutes.mainLayout);
          } else {
            context.go(AppRoutes.locationPickerOnboarding);
          }
        }
        if (state.isResendSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).otpResentSuccess)),
          );
        }
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.error!.serverMessage ??
                    state.error!.failure.message(context),
              ),
            ),
          );
        }
      },
      child: const VerifyEmailViewBody(),
    );
  }
}
