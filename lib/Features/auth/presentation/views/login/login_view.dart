import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/action_prompt.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_view_body_bloc_listener.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<LoginBloc>()),
        BlocProvider<WishlistBloc>(create: (context) => sl<WishlistBloc>()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(child: Center(child: LoginViewBodyBlocListener())),
        bottomNavigationBar: ActionPrompt(
          prompt: translate.dontHaveAnAccount,
          actionText: translate.signUp,
          onActionTap: () {
            context.push(AppRoutes.register);
          },
        ),
      ),
    );
  }
}
