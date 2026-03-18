// reset_password_request_actions.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetPasswordRequestActions extends StatelessWidget {
  const ResetPasswordRequestActions({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        // ─── Submit Button ────────────────────────────
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (previous, current) =>
              previous.isRequestLoading != current.isRequestLoading ||
              previous.isRequestFormValid != current.isRequestFormValid,
          builder: (context, state) {
            return CustomButton(
              enabled: state.isRequestFormValid,
              isLoading: state.isRequestLoading,
              text: translate.submit,
              onPressed: state.isRequestLoading
                  ? null
                  : () => context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.requestSubmitted(),
                    ),
            );
          },
        ),
        SizedBox(height: AppSizes.h32),

        // ─── Back to Login ────────────────────────────
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(translate.backToLogin),
        ),
      ],
    );
  }
}
