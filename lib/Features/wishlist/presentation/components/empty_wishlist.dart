import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';


class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    final translate = S.of(context);
    return Column(
      children: [
        SizedBox(height: AppSizes.h120),
        Container(
          width: AppSizes.w100,
          height: AppSizes.w100,
          decoration: BoxDecoration(
            color: colors.primarySoft,
            borderRadius: BorderRadius.circular(AppSizes.r30),
          ),
          child: Icon(
            Icons.favorite_border_rounded,
            size: AppSizes.sp36,
            color: colors.primary.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: AppSizes.h20),
        Text(
          translate.emptyFavoriteTitle,
          style: textTheme.titleLarge?.copyWith(height: 1.6),
        ),
        SizedBox(height: AppSizes.h10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.w40),
          child: Text(
            translate.emptyFavoriteBody,
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium?.copyWith(
              color: colors.textHint,
              height: 1.3,
            ),
          ),
        ),
        SizedBox(height: AppSizes.h60),
      ],
    );
  }
}
