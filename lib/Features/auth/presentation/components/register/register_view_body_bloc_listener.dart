import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/register/register_view_body.dart';
import 'package:heka_store/core/app/router/app_routes.dart';

class RegisterViewBodyBlocListener extends StatelessWidget {
  const RegisterViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) =>
          previous.isRegisterSuccess != current.isRegisterSuccess ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.isRegisterSuccess) {
          context.push(AppRoutes.verifyEmail,extra: {'email': state.email,},
);
        }

        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.error!.serverMessage ??
                    state.error!.failure.message(context),
              ),
            ),
          );
        }
      },
      child: const RegisterViewBody(),
    );
  }
}
