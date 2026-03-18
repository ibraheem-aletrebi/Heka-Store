import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetNewPasswordForm extends StatelessWidget {
  const ResetNewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        // ─── New Password ─────────────────────────────
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (previous, current) =>
              previous.passwordError != current.passwordError ||
              previous.isPasswordDirty != current.isPasswordDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.newPassword,
              isPassword: true,
              textInputAction: TextInputAction.next,
              prefix: const Icon(CupertinoIcons.lock),
              errorText: state.isPasswordDirty
                  ? state.passwordError?.translate(context)
                  : null,
              onChanged: (value) => context
                  .read<ForgotPasswordBloc>()
                  .add(ForgotPasswordEvent.passwordChanged(value)),
            );
          },
        ),
        SizedBox(height: AppSizes.h16),

        // ─── Confirm Password ─────────────────────────
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (previous, current) =>
              previous.confirmPasswordError != current.confirmPasswordError ||
              previous.isConfirmPasswordDirty !=
                  current.isConfirmPasswordDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.confirmPassword,
              isPassword: true,
              textInputAction: TextInputAction.done,
              prefix: const Icon(CupertinoIcons.lock),
              errorText: state.isConfirmPasswordDirty
                  ? state.confirmPasswordError?.translate(context)
                  : null,
              onChanged: (value) => context
                  .read<ForgotPasswordBloc>()
                  .add(ForgotPasswordEvent.confirmPasswordChanged(value)),
            );
          },
        ),
      ],
    );
  }
}