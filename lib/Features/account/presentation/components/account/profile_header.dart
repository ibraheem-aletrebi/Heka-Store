import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/user_avater.dart';
import 'package:heka_store/generated/l10n.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return CustomSkeletonizer(
          enable: state.isLoading,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w16,
                  vertical: AppSizes.h16,
                ),
                child: Row(
                  children: [
                    UserAvatar(
                      imageUrl: state.profile?.profilePictureUrl,
                      name: state.profile?.firstName,
                      size: AppSizes.w60,
                    ),
                    SizedBox(width: AppSizes.w8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: AppSizes.h4,
                        children: [
                          Text(
                            state.profile?.fullName ?? '',
                            style: textTheme.titleMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            state.profile?.email ?? '',
                            style: textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final edited = await context.push(
                          AppRoutes.editProfile,
                          extra: state.profile,
                        );
                        if (edited == true && context.mounted) {
                          context.read<UserProfileBloc>().add(
                            const UserProfileEvent.reloaded(),
                          );
                        }
                      },
                      child: Column(
                        spacing: AppSizes.h4,
                        children: [
                          Icon(Icons.edit_outlined, size: AppSizes.sp18),
                          Text(
                            S.of(context).editProfile,
                            textAlign: TextAlign.center,
                            style: textTheme.bodySmall?.copyWith(
                              fontSize: AppSizes.sp10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
