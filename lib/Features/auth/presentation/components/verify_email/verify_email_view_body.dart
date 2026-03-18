import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/auth_title_body.dart';
import 'package:heka_store/Features/auth/presentation/components/verify_email/verify_email_actions.dart';
import 'package:heka_store/Features/auth/presentation/components/verify_email/verify_email_form.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/logo.dart';
import 'package:heka_store/generated/l10n.dart';

class VerifyEmailViewBody extends StatelessWidget {
  const VerifyEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          SizedBox(height: context.height * 0.05),
          Center(child: Logo()),
          SizedBox(height: AppSizes.h24),
          AuthTitleBody(
            title: translate.verifyEmailOtpTitle,
            body:
                "${translate.verifyEmailOtpBody} ${context.read<VerifyEmailBloc>().email}",
          ),

          SizedBox(height: context.height * 0.1),
          Center(child: VerifyEmailForm()),
          SizedBox(height: AppSizes.h32),
          VerifyEmailActions(),
        ],
      ),
    );
  }
}
