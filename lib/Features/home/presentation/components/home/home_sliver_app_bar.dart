import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/greeting_text.dart';
import 'package:heka_store/Features/home/presentation/components/home/location_row.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/notification_button.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class HomeSliverAppBar extends StatelessWidget {
  final VoidCallback? onAvatarTap;
  final VoidCallback? onLocationTap;

  const HomeSliverAppBar({super.key, this.onAvatarTap, this.onLocationTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;

        return BlocBuilder<AddressBloc, AddressState>(
          builder: (context, addressState) {
            final addresses = addressState.addresses;

            final String? defaultAdrees = addresses.isNotEmpty
                ? (addresses
                      .firstWhere(
                        (a) => a.isDefault,
                        orElse: () => addresses.first,
                      )
                      .fullAddress)
                : null;

            return SliverAppBar(
              pinned: true,
              expandedHeight: context.height * 0.12,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: CustomSkeletonizer(
                  enable:
                      context.read<UserProfileBloc>().state.isLoading ||
                      context.read<AddressBloc>().state.isLoading,
                  child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w16,
                        vertical: AppSizes.h8,
                      ),
                      child: Row(
                        children: [
                          UserAvatar(
                            imageUrl: profile?.profilePictureUrl,
                            name: profile?.firstName,
                            size: AppSizes.w56,
                            onTap: onAvatarTap,
                          ),
                          SizedBox(width: AppSizes.w8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GreetingText(name: profile?.firstName),
                                SizedBox(height: AppSizes.h4),
                                if (addresses.isNotEmpty)
                                  LocationRow(
                                    location: defaultAdrees ?? '',
                                    onTap: onLocationTap,
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(width: AppSizes.w12),
                          const NotificationButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
