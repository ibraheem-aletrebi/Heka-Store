import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetNewPasswordActions extends StatelessWidget {
  const ResetNewPasswordActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.isResetLoading != current.isResetLoading ||
          previous.isResetFormValid != current.isResetFormValid,
      builder: (context, state) {
        return CustomButton(
          enabled: state.isResetFormValid,
          isLoading: state.isResetLoading,
          text: S.of(context).saveChanges,
          onPressed: state.isResetLoading
              ? null
              : () => context.read<ForgotPasswordBloc>().add(
                  const ForgotPasswordEvent.resetSubmitted(),
                ),
        );
      },
    );
  }
}
