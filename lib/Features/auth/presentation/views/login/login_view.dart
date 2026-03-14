import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/action_prompt.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_view_body.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: Center(child: LoginViewBody())),
      bottomNavigationBar: ActionPrompt(
        prompt: translate.dontHaveAnAccount,
        actionText: translate.signUp,
        onActionTap: () {
          ///TODO: navigate to sign up
        },
      ),
    );
  }
}
