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

  String _displayName(BuildContext context) =>
      name?.trim().split(' ').first ?? S.of(context).guest;

  String _prefix(BuildContext context) => name != null
      ? '${_greeting(context)}, '
      : '${S.of(context).hello}, ';

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;

    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: _prefix(context),
            style: AppTextStyles.regular13.copyWith(color: c.textHint),
          ),
          TextSpan(
            text: '${_displayName(context)} 👋',
            style: AppTextStyles.semiBold13.copyWith(color: c.textPrimary),
          ),
        ],
      ),
    );
  }
}