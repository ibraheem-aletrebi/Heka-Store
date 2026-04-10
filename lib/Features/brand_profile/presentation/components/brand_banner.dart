import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class BrandBanner extends StatelessWidget {
  final String? bannerUrl;
  final String? logoUrl;
  final String? storeName;

  const BrandBanner({super.key, this.bannerUrl, this.logoUrl, this.storeName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive sizes
    final bannerHeight = screenWidth * 0.55;
    final avatarRadius = screenWidth * 0.12;

    return SliverAppBar(
      expandedHeight: bannerHeight,
      floating: true,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: true,

      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: bannerUrl != null
                    ? CachedImage(url: bannerUrl!, fit: BoxFit.cover)
                    : Container(color: context.myColors.primary),
              ),

              /// 🔹 Gradient Overlay (UI أحلى)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),

              /// 🔹 Avatar + Name
              PositionedDirectional(
                bottom: -avatarRadius, 
                start: 16,
                child:UserAvatar(
                  imageUrl: logoUrl,
                  size: AppSizes.w100,
                  name: storeName,
                )
              ),
            ],
          );
        },
      ),
    );
  }
}
