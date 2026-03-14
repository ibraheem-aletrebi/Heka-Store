import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/resources/app_assets.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LanguageBloc>().state.languageCode == 'ar';

    return Image.asset(
      isArabic ? AppAssets.logoWordPngAr : AppAssets.logoWordPngEn,
      width: AppSizes.w80,
    );
  }
}
