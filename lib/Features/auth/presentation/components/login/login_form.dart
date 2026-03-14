import 'package:flutter/cupertino.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);

    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hint: translate.email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefix: Icon(CupertinoIcons.person),
            validator: (value) {
              return null;
            },
          ),
          SizedBox(height: AppSizes.h16),
          CustomTextFormField(
            hint: translate.password,
            isPassword: true,
            textInputAction: TextInputAction.done,
            prefix: Icon(CupertinoIcons.lock),
            validator: (value) {
              return null;
            },
          ),
        ],
      ),
    );
  }
}
