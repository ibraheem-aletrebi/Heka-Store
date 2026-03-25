import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class NameFields extends StatelessWidget {
  const NameFields({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Row(
      children: [
        Expanded(
          child: BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.firstNameError != current.firstNameError ||
                previous.isFirstNameDirty != current.isFirstNameDirty,
            builder: (context, state) {
              return CustomTextFormField(
                hint: translate.firstName,
                prefix: const Icon(CupertinoIcons.person),
                textInputAction: TextInputAction.next,
                errorText: state.isFirstNameDirty
                    ? state.firstNameError?.translate(context)
                    : null,
                onChanged: (value) => context.read<RegisterBloc>().add(
                  RegisterEvent.firstNameChanged(value),
                ),
              );
            },
          ),
        ),
        SizedBox(width: AppSizes.w12),

        Expanded(
          child: BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.lastNameError != current.lastNameError ||
                previous.isLastNameDirty != current.isLastNameDirty,
            builder: (context, state) {
              return CustomTextFormField(
                hint: translate.lastName,
                prefix: const Icon(CupertinoIcons.person_2),
                textInputAction: TextInputAction.next,
                errorText: state.isLastNameDirty
                    ? state.lastNameError?.translate(context)
                    : null,
                onChanged: (value) => context.read<RegisterBloc>().add(
                  RegisterEvent.lastNameChanged(value),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
