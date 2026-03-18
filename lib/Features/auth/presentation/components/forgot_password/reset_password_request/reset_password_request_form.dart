import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class ResetPasswordRequestForm extends StatelessWidget {
  const ResetPasswordRequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.emailError != current.emailError ||
          previous.isEmailDirty != current.isEmailDirty,
      builder: (context, state) {
        return Form(
          child: CustomTextFormField(
            hint: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            prefix: const Icon(CupertinoIcons.person),
            errorText: state.isEmailDirty
                ? state.emailError?.translate(context)
                : null,
            onChanged: (value) => context.read<ForgotPasswordBloc>().add(
              ForgotPasswordEvent.emailChanged(value),
            ),
          ),
        );
      },
    );
  }
}
