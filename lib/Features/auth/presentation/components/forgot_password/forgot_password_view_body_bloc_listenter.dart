import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/forgot_password_flow.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/generated/l10n.dart';

class ForgotPasswordViewBodyBlocListener extends StatelessWidget {
  const ForgotPasswordViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (previous, current) =>
          previous.error != current.error ||
          previous.isResetSuccess != current.isResetSuccess ||
          previous.isResendSuccess != current.isResendSuccess,
      listener: (context, state) {
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
        if (state.isResetSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).resetPasswordSuccess)),
          );
          context.pushReplacement(AppRoutes.login);
        }
        if (state.isResendSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).otpResentSuccess)),
          );
        }
      },
      child: const ForgotPasswordFlow(),
    );
  }
}
