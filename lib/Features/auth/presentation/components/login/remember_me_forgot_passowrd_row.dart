import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class RememberMeForgotPassowrdRow extends StatelessWidget {
  const RememberMeForgotPassowrdRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final translate = S.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.rememberMe != current.rememberMe,
          builder: (context, state) {
            return GestureDetector(
              onTap: () => context
                  .read<LoginBloc>()
                  .add(const LoginEvent.rememberMeToggled()),
              child: Row(
                children: [
                  Checkbox(
                    value: state.rememberMe,
                    onChanged: (_) => context
                        .read<LoginBloc>()
                        .add(const LoginEvent.rememberMeToggled()),
                    activeColor: colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Text(
                    translate.rememberMe,
                    style: AppTextStyles.regular14.copyWith(
                      color: colors.textSecondary,
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        TextButton(
          onPressed: () {
            // TODO: navigate to forgot password
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(translate.forgotPassword),
        ),
      ],
    );
  }
}