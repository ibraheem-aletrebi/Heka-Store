import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_view_body.dart';
import 'package:heka_store/core/app/router/app_routes.dart';

class LoginViewBodyBlocListener extends StatelessWidget {
  const LoginViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) =>
          previous.isSuccess != current.isSuccess ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.isSuccess) {
          final hasAddress =
              state.loginResponse?.data?.user.hasAddress ?? false;
          if (hasAddress) {
            context.go(AppRoutes.mainLayout);
          } else {
            context.go(AppRoutes.locationPickerOnboarding);
          }
          return;
        }

        if (state.error != null && !state.isSuccess) {
          if (state.error!.statusCode == 401) {
            context.pushReplacement(
              AppRoutes.verifyEmail,
              extra: {'email': state.email, 'autoResend': true},
            );
            return;
          }

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
      child: const LoginViewBody(),
    );
  }
}
