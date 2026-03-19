import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';

import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/utils/convert_to_arabic_number.dart';

class CartBadge extends StatelessWidget {
  final int count;
  const CartBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: context.myColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        count > 99
            ? context.read<LanguageBloc>().state.languageCode == 'ar'
                  ? '${convertToArabicNumber(99)}+'
                  : '99+'
            : '$count',
        textAlign: TextAlign.center,
        style: AppTextStyles.semiBold12.copyWith(color: Colors.white),
      ),
    );
  }
}
