import 'package:flutter/material.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/logo.dart';
import 'package:heka_store/generated/l10n.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Logo()),
        SizedBox(height: AppSizes.h16),
        AuthTitleBody(
          title: translate.signUp,
          body: translate.createAccountToContinue,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}
