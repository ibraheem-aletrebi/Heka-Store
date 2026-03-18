import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/google_auth_button.dart';
import 'package:heka_store/Features/auth/presentation/components/social_auth_divider.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class RegisterActions extends StatelessWidget {
  const RegisterActions({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        // ─── Register Button ──────────────────────────
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.isLoading != current.isLoading ||
              previous.isFormValid != current.isFormValid,
          builder: (context, state) {
            return CustomButton(
              enabled: state.isFormValid,
              text: translate.register,
              isLoading: state.isLoading,
              onPressed: state.isLoading
                  ? null
                  : () => context.read<RegisterBloc>().add(
                      const RegisterEvent.submitted(),
                    ),
            );
          },
        ),
        SizedBox(height: AppSizes.h24),
        SocialAuthDivider(text: translate.orRegisterWith),
        SizedBox(height: AppSizes.h24),

        // ─── Google Button ────────────────────────────
        GoogleAuthButton(),
      ],
    );
  }
}
