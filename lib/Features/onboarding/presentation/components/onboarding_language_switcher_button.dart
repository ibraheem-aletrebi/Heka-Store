import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class OnboardingLanguageSwitcherButton extends StatelessWidget {
  const OnboardingLanguageSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return GestureDetector(
      onTap: () => context.read<LanguageBloc>().add(
        const LanguageEvent.toggleArabicEnglish(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w24,
          vertical: AppSizes.h8,
        ),
        decoration: BoxDecoration(
          color: colors.primary.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Text(
              S.of(context).lang,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 5),
            const Icon(Icons.language, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
