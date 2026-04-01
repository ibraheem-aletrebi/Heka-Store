import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/account/presentation/components/account/account_view_body.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<UserProfileBloc>()..add(const UserProfileEvent.loaded()),
      child: AccountViewBody(),
    );
  }
}
