import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Column(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.emailError != current.emailError,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.email,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              prefix: const Icon(CupertinoIcons.person),
              errorText: state.emailError?.translate(context),
              onChanged: (value) => context
                  .read<LoginBloc>()
                  .add(LoginEvent.emailChanged(value)),
            );
          },
        ),
        SizedBox(height: AppSizes.h16),

        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.passwordError != current.passwordError,
          builder: (context, state) {
            return CustomTextFormField(
              hint: translate.password,
              isPassword: true,
              textInputAction: TextInputAction.done,
              prefix: const Icon(CupertinoIcons.lock),
              errorText: state.passwordError?.translate(context),
              onChanged: (value) => context
                  .read<LoginBloc>()
                  .add(LoginEvent.passwordChanged(value)),
            );
          },
        ),
      ],
    );
  }
}