import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/components/home/greeting_text.dart';
import 'package:heka_store/Features/home/components/home/location_row.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/notification_button.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class HomeSliverAppBar extends StatelessWidget {
  final String? userName;
  final String? userImageUrl;
  final VoidCallback? onAvatarTap;
  final String location;
  final VoidCallback? onLocationTap;

  const HomeSliverAppBar({
    super.key,
    this.userName,
    this.userImageUrl,
    this.onAvatarTap,
    this.location = 'Egypt',
    this.onLocationTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: AppSizes.h70,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.h8,
            ),
            child: Row(
              children: [
                UserAvatar(
                  imageUrl: userImageUrl,
                  name: userName,
                  onTap: onAvatarTap,
                ),

                SizedBox(width: AppSizes.w12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GreetingText(name: userName),
                      SizedBox(height: AppSizes.h2),
                      LocationRow(location: location, onTap: onLocationTap),
                    ],
                  ),
                ),
                SizedBox(width: AppSizes.w8),
                const NotificationButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


