import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/social_auth_divider.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginActionButtons extends StatelessWidget {
  const LoginActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.isLoading != current.isLoading ||
              previous.isFormValid != current.isFormValid,
          builder: (context, state) {
            return CustomButton(
              text: translate.login,
              isLoading: state.isLoading,
              onPressed: state.isLoading || !state.isFormValid
                  ? null
                  : () => context.read<LoginBloc>().add(
                      const LoginEvent.submitted(),
                    ),
            );
          },
        ),
        SizedBox(height: AppSizes.h24),
        SocialAuthDivider(text: translate.orLoginWith),
        SizedBox(height: AppSizes.h24),

        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.isGoogleLoading != current.isGoogleLoading,
          builder: (context, state) {
            return CustomButton.outlined(
              text: translate.signInWithGoogle,
              isLoading: state.isGoogleLoading,
              onPressed: state.isGoogleLoading
                  ? null
                  : () => context.read<LoginBloc>().add(
                      const LoginEvent.googleSignInSubmitted(),
                    ),
              icon: const Icon(
                CupertinoIcons.person_crop_circle_badge_checkmark,
              ),
            );
          },
        ),
      ],
    );
  }
}
