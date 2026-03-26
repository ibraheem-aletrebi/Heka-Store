import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final translate = S.of(context);
    final TextTheme textTheme = TextTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: AppSizes.h40),
        Container(
          width: AppSizes.w100,
          height: AppSizes.w100,
          decoration: BoxDecoration(
            color: colors.primarySoft,
            borderRadius: BorderRadius.circular(AppSizes.r30),
          ),
          child: Icon(
            Icons.shopping_cart_outlined,
            size: AppSizes.sp36,
            color: colors.primary.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: AppSizes.h24),
        Text(
          translate.cartEmptyTitle,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: AppSizes.h8),
        Text(
          translate.cartEmptySubtitle,
          style: textTheme.bodyMedium?.copyWith(color: colors.textHint),
        ),
        SizedBox(height: AppSizes.h32),
        CustomButton(
          text: translate.startShopping,
          onPressed: () {},
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        SizedBox(height: AppSizes.h40),
      ],
    );
  }
}
