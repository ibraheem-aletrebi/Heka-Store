import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class GreetingText extends StatelessWidget {
  final String? name;
  const GreetingText({super.key, this.name});

  String _greeting(BuildContext context) {
    final s = S.of(context);
    final hour = DateTime.now().hour;
    if (hour < 12) return s.goodMorning;
    if (hour < 17) return s.goodAfternoon;
    return s.goodEvening;
  }

  String? _firstName() => name?.trim().split(' ').first;

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;
    final firstName = _firstName();

    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: firstName != null
                ? '${_greeting(context)}, '
                : _greeting(context),
            style: AppTextStyles.regular13.copyWith(color: c.textHint),
          ),
          if (firstName != null)
            TextSpan(
              text: '$firstName 👋',
              style: AppTextStyles.semiBold13.copyWith(color: c.textPrimary),
            ),
        ],
      ),
    );
  }
}
