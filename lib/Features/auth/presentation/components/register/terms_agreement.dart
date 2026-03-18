import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class TermsAgreement extends StatefulWidget {
  const TermsAgreement({super.key});

  @override
  State<TermsAgreement> createState() => _TermsAgreementState();
}

class _TermsAgreementState extends State<TermsAgreement> {
  late final TapGestureRecognizer _privacyRecognizer;
  late final TapGestureRecognizer _termsRecognizer;

  @override
  void initState() {
    super.initState();
    _privacyRecognizer = TapGestureRecognizer()
      ..onTap = () {
        // TODO: Navigate to privacy policy
      };
    _termsRecognizer = TapGestureRecognizer()
      ..onTap = () {
        // TODO: Navigate to terms of use
      };
  }

  @override
  void dispose() {
    _privacyRecognizer.dispose();
    _termsRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primary = context.myColors.primary;
    final textSecondary = context.myColors.textSecondary;
    final translate = S.of(context);

    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.acceptTerms != current.acceptTerms,
      builder: (context, state) {
        return Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ─── Checkbox ─────────────────────────────
            Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              value: state.acceptTerms,
              onChanged: (_) => context.read<RegisterBloc>().add(
                const RegisterEvent.acceptTermsToggled(),
              ),
              activeColor: primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            // ─── Text ─────────────────────────────────
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: AppTextStyles.regular14.copyWith(color: textSecondary),
                  children: [
                    TextSpan(text: translate.iAgreeTo),
                    TextSpan(
                      text: translate.privacyPolicy,
                      style: AppTextStyles.semiBold14.copyWith(
                        color: primary,
                        decoration: TextDecoration.underline,
                        decorationColor: primary,
                      ),
                      recognizer: _privacyRecognizer,
                    ),
                    TextSpan(text: translate.and),
                    TextSpan(
                      text: translate.termsOfUse,
                      style: AppTextStyles.semiBold14.copyWith(
                        color: primary,
                        decoration: TextDecoration.underline,
                        decorationColor: primary,
                      ),
                      recognizer: _termsRecognizer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
