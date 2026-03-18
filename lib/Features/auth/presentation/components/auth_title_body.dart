import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class AuthTitleBody extends StatelessWidget {
  const AuthTitleBody({
    super.key,
    required this.title,
    required this.body,
    this.textAlign = TextAlign.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final String title;
  final String body;
  final TextAlign textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title, textAlign: textAlign, style: textTheme.headlineLarge),
        SizedBox(height: AppSizes.h8),
        Text(body, textAlign: textAlign, style: textTheme.bodyMedium),
      ],
    );
  }
}
