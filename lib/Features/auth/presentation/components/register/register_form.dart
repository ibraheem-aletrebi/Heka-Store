import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/register/name_fields.dart';
import 'package:heka_store/Features/auth/presentation/components/register/terms_agreement.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        // ─── Name Fields ──────────────────────────────
        const NameFields(),
        SizedBox(height: AppSizes.h16),

        // ─── Email ────────────────────────────────────
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.emailError != current.emailError ||
              previous.isEmailDirty != current.isEmailDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.email,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              prefix: const Icon(Icons.email_outlined),
              errorText: state.isEmailDirty
                  ? state.emailError?.translate(context)
                  : null,
              onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.emailChanged(value),
              ),
            );
          },
        ),
        SizedBox(height: AppSizes.h16),

        // ─── Phone ────────────────────────────────────
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.phoneError != current.phoneError ||
              previous.isPhoneDirty != current.isPhoneDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.phoneNumber,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              prefix: const Icon(CupertinoIcons.phone),
              errorText: state.isPhoneDirty
                  ? state.phoneError?.translate(context)
                  : null,
              onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.phoneChanged(value),
              ),
            );
          },
        ),
        SizedBox(height: AppSizes.h16),

        // ─── Password ─────────────────────────────────
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.passwordError != current.passwordError ||
              previous.isPasswordDirty != current.isPasswordDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.password,
              isPassword: true,
              textInputAction: TextInputAction.next,
              prefix: const Icon(CupertinoIcons.lock),
              errorText: state.isPasswordDirty
                  ? state.passwordError?.translate(context)
                  : null,
              onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.passwordChanged(value),
              ),
            );
          },
        ),
        SizedBox(height: AppSizes.h16),

        // ─── Confirm Password ─────────────────────────
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.confirmPasswordError != current.confirmPasswordError ||
              previous.isConfirmPasswordDirty != current.isConfirmPasswordDirty,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.confirmPassword,
              isPassword: true,
              textInputAction: TextInputAction.done,
              prefix: const Icon(CupertinoIcons.lock),
              errorText: state.isConfirmPasswordDirty
                  ? state.confirmPasswordError?.translate(context)
                  : null,
              onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.confirmPasswordChanged(value),
              ),
            );
          },
        ),
        SizedBox(height: AppSizes.h8),

        // ─── Terms Agreement ──────────────────────────
        const TermsAgreement(),
      ],
    );
  }
}
