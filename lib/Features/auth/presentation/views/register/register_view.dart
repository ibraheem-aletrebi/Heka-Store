import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/action_prompt.dart';
import 'package:heka_store/Features/auth/presentation/components/register/register_view_body_bloc_listener.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<RegisterBloc>()),
        BlocProvider(create: (context) => sl<LoginBloc>()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(child: RegisterViewBodyBlocListener()),
        bottomNavigationBar: ActionPrompt(
          prompt: translate.alreadyHaveAnAccount,
          actionText: translate.login,
          onActionTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
