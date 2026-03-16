
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/login/login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) =>
          previous.isSuccess != current.isSuccess ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.isSuccess) {
          // TODO: Navigate to Home
        }

        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!.failure.message(context))),
          );
        }
      },
      builder: (context, state) {
        return const LoginViewBody();
      },
    );
  }
}
