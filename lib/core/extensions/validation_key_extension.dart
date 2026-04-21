import 'package:flutter/material.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/generated/l10n.dart';

extension ValidationKeyTranslation on ValidationKey {
  String translate(BuildContext context) {
    final s = S.of(context);
    return switch (this) {
      ValidationKey.emailRequired => s.emailRequired,
      ValidationKey.emailInvalid => s.emailInvalid,
      ValidationKey.emailTooLong => s.emailTooLong,
      ValidationKey.emailInvalidFormat => s.emailInvalidFormat,
      ValidationKey.emailInvalidLocal => s.emailInvalidLocal,
      ValidationKey.emailInvalidDomain => s.emailInvalidDomain,
      ValidationKey.emailInvalidTld => s.emailInvalidTld,
      
      ValidationKey.passwordRequired => s.passwordRequired,
      ValidationKey.passwordTooShort => s.passwordTooShort,
      ValidationKey.passwordTooLong => s.passwordTooLong,
      ValidationKey.passwordNoUppercase => s.passwordNoUppercase,
      ValidationKey.passwordNoLowercase => s.passwordNoLowercase,
      ValidationKey.passwordNoNumber => s.passwordNoNumber,
      ValidationKey.passwordNoSpecialChar => s.passwordNoSpecialChar,
      ValidationKey.passwordMismatch => s.passwordMismatch,
      ValidationKey.passwordTooWeak => s.passwordTooWeak,

      ValidationKey.nameRequired => s.nameRequired,
      ValidationKey.nameTooShort => s.nameTooShort,
      ValidationKey.nameTooLong => s.nameTooLong,
      ValidationKey.nameInvalid => s.nameInvalid,

      ValidationKey.otpRequired => s.otpRequired,
      ValidationKey.otpInvalid => s.otpInvalid,
      ValidationKey.otpTooShort => s.otpTooShort,

      ValidationKey.phoneRequired => s.phoneRequired,
      ValidationKey.phoneInvalid => s.phoneInvalid,

      ValidationKey.fieldRequired => s.fieldRequired,

      ValidationKey.accountDeleted => s.accountDeletedSuccessfully,
    };
  }
}