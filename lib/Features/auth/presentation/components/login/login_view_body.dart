import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_action_buttons.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_form.dart';
import 'package:heka_store/Features/auth/presentation/components/login/remember_me_forgot_passowrd_row.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/logo.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Logo()),
          SizedBox(height: AppSizes.h56),
          AuthTitleBody(
            crossAxisAlignment: CrossAxisAlignment.start,
            title: translate.getStartedNow,
            body: translate.enterYourEmailAndPasswordToLogin,
          ),
          SizedBox(height: AppSizes.h32),
          LoginForm(),
          SizedBox(height: AppSizes.h16),
          RememberMeForgotPassowrdRow(),
          SizedBox(height: AppSizes.h32),
          LoginActionButtons(),
        ],
      ),
    );
  }
}
