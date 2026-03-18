import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/forgot_password_view_body_bloc_listenter.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ForgotPasswordBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.w16),
            child: const ForgotPasswordViewBodyBlocListener(),
          ),
        ),
      ),
    );
  }
}
