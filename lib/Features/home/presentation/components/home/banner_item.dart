import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/presentation/components/home/banner_section.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';


class BannerItem extends StatelessWidget {
  final BannerData data;
  const BannerItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: data.gradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(AppSizes.w20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w12,
                    vertical: AppSizes.h4,
                  ),
                  decoration: BoxDecoration(
                    color: data.accent.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Text(
                    'NEW COLLECTION',
                    style: AppTextStyles.semiBold15.copyWith(
                      color: data.accent,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.h8),
                Text(
                  data.title,
                  style: AppTextStyles.bold22.copyWith(
                    color: const Color(0xFF1C1410),
                    height: 1.1,
                  ),
                ),
                SizedBox(height: AppSizes.h4),
                Text(
                  data.subtitle,
                  style: AppTextStyles.regular12.copyWith(
                    color: const Color(0xFF6B5B4E),
                  ),
                ),
                SizedBox(height: AppSizes.h12),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w16,
                    vertical: AppSizes.h8,
                  ),
                  decoration: BoxDecoration(
                    color: data.accent,
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Text(
                    'Shop Now',
                    style: AppTextStyles.semiBold15.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(left: AppSizes.w8),
              decoration: BoxDecoration(
                color: data.accent.withOpacity(0.08),
                borderRadius: BorderRadius.circular(AppSizes.r16),
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 64,
                color: data.accent.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
