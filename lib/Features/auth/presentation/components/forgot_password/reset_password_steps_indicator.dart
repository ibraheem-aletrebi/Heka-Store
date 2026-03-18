import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/utils/convert_to_arabic_number.dart';


class ResetPasswordStepsIndicator extends StatelessWidget {
  const ResetPasswordStepsIndicator({
    super.key,
    required this.numberOfSteps,
    required this.currentStep,
  });

  final int numberOfSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LanguageBloc>().state.languageCode == 'ar';
    final colors = context.myColors;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(numberOfSteps * 2 - 1, (i) {
        if (i.isEven) {
          int stepIndex = i ~/ 2;
          bool isCompleted = currentStep > stepIndex;
          bool isActive = currentStep >= stepIndex;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            width: AppSizes.w32,
            height: AppSizes.w32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? colors.primary : colors.surface,

              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: colors.primary.withValues(alpha: 0.85),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            alignment: Alignment.center,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutBack,
                  ),
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: isCompleted
                  ? const Icon(
                      Icons.check,
                      key: ValueKey('check_icon'),
                      color: Colors.white,
                    )
                  : Text(
                      isArabic
                          ? convertToArabicNumber(stepIndex + 1)
                          : '${stepIndex + 1}',
                      key: ValueKey('step_$stepIndex'),
                      style: textTheme.titleSmall?.copyWith(
                        color: isActive ? Colors.white : colors.textPrimary,
                      ),
                    ),
            ),
          );
        } else {
          int prevStepIndex = i ~/ 2;
          bool isActive = currentStep > prevStepIndex;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            width: AppSizes.w60,
            height: 4,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.r12),
              gradient: isActive
                  ? LinearGradient(
                      colors: [
                        colors.primary.withValues(alpha: 0.1),
                        colors.primary,
                      ],
                    )
                  : null,
              color: !isActive ? colors.primary.withValues(alpha: 0.3) : null,
            ),
          );
        }
      }),
    );
  }
}
