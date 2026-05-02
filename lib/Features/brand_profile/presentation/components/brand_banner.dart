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
    final screenWidth = MediaQuery.sizeOf(context).width;
    final colors = context.myColors;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Responsive sizes
    final bannerHeight = screenWidth * 0.55;
    final avatarRadius = screenWidth * 0.12;

    return SliverAppBar(
      expandedHeight: bannerHeight,
      floating: true,
      snap: true, // required alongside floating when using expandedHeight
      pinned: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: colors.background, // theme-aware fallback
      foregroundColor: Colors.white, // back-arrow always white over banner
      shadowColor: colors.shadow,
      // Keep back button visible over any banner image
      iconTheme: const IconThemeData(color: Colors.white),
      automaticallyImplyLeading: true,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              // ── Banner image / fallback ──────────────────────────────
              Positioned.fill(
                child: bannerUrl != null
                    ? CachedImage(url: bannerUrl!, fit: BoxFit.cover)
                    : ColoredBox(
                        color: colors.primarySoft,
                      ), // use theme soft instead of primary
              ),

              // ── Gradient overlay — stronger in dark mode ─────────────
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(isDark ? 0.5 : 0.3),
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),

              // ── Avatar + store name ──────────────────────────────────
              PositionedDirectional(
                bottom: -avatarRadius,
                start: AppSizes.w16,
                child: UserAvatar(
                  imageUrl: logoUrl,
                  size: AppSizes.w100,
                  name: storeName,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
