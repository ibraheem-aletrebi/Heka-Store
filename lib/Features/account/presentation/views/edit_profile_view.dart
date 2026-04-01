import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/account/presentation/blocs/edit_profile/edit_profile_bloc.dart';
import 'package:heka_store/Features/account/presentation/blocs/profile_image/profile_image_bloc.dart';
import 'package:heka_store/Features/account/presentation/components/edit_profile/edit_profile_view_body.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key, required this.userProfile});
  final UserProfile userProfile;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<EditProfileBloc>()),
        BlocProvider(create: (context) => sl<ProfileImageBloc>()),
      ],
      child: Scaffold(
        body: SafeArea(child: EditProfileViewBody(userProfile: userProfile)),
      ),
    );
  }
}
