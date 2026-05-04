import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/account/presentation/components/account/account_view_body.dart';
import 'package:heka_store/Features/auth/presentation/blocs/delete_account/delete_account_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/logout/logout_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<DeleteAccountBloc>()),
        BlocProvider(create: (context) => sl<LogoutBloc>()),
      ],
      child: AccountViewBody(),
    );
  }
}
