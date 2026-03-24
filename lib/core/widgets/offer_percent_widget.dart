import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/utils/convert_to_arabic_number.dart';
import 'package:heka_store/generated/l10n.dart';

class OfferPercentWidget extends StatelessWidget {
  const OfferPercentWidget({super.key, required this.percent});
  final double percent;
  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isArabic = context.read<LanguageBloc>().state.languageCode == 'ar';
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w8,
        vertical: AppSizes.h2,
      ),
      decoration: BoxDecoration(
        color: colors.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Text(
        '${isArabic ? convertToArabicNumber(percent) : percent}% ${S.of(context).off}',
        style: TextTheme.of(
          context,
        ).bodySmall?.copyWith(color: colors.primary, height: 1.5),
      ),
    );
  }
}
