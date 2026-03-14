import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';


class SocialAuthDivider extends StatelessWidget {
  final String text;

  const SocialAuthDivider({super.key, this.text = 'Or login with'});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
          child: Text(
            text,
            style: AppTextStyles.regular14.copyWith(color: colors.textHint),
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
