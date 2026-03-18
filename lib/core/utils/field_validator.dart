import 'package:heka_store/core/enums/validation_key.dart';

class FieldValidator {
  const FieldValidator._();

  static final RegExp _emailLocal = RegExp(
    r'^[a-zA-Z0-9][a-zA-Z0-9._%+\-]*[a-zA-Z0-9]$|^[a-zA-Z0-9]$',
  );
  static final RegExp _emailDomain = RegExp(
    r'^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?'
    r'(\.[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?)*'
    r'\.[a-zA-Z]{2,63}$',
  );
  static final RegExp _uppercase = RegExp(r'[A-Z]');
  static final RegExp _lowercase = RegExp(r'[a-z]');
  static final RegExp _digit = RegExp(r'\d');
  static final RegExp _special = RegExp(
    r'[!@#\$%^&*()\-_=+\[\]{};:,.<>?/\\|`~"'
    "'"
    r']',
  );
  static final RegExp _phoneE164 = RegExp(r'^\+[1-9][0-9]{6,14}$');
  static final RegExp _phoneLocal = RegExp(r'^0[0-9]{7,14}$');
  static final RegExp _consecutiveSpaces = RegExp(r'\s{2,}');
  static final RegExp _nameRegex = RegExp(
    r"^[\p{L}\p{M}\s'\-\.]+$",
    unicode: true,
  );
  static final RegExp _otpRegex = RegExp(r'^[0-9]+$');

  static ValidationKey? email(String value) {
    final trimmed = value.trim().toLowerCase();

    if (trimmed.isEmpty) return ValidationKey.emailRequired;
    if (trimmed.length > 254) return ValidationKey.emailTooLong;

    final atCount = '@'.allMatches(trimmed).length;
    if (atCount != 1) return ValidationKey.emailInvalidFormat;

    final atIndex = trimmed.indexOf('@');
    if (atIndex <= 0) return ValidationKey.emailInvalidFormat;

    final local = trimmed.substring(0, atIndex);
    final domain = trimmed.substring(atIndex + 1);

    if (local.isEmpty || local.length > 64) {
      return ValidationKey.emailInvalidLocal;
    }
    if (local.contains('..')) return ValidationKey.emailInvalidLocal;
    if (!_emailLocal.hasMatch(local)) return ValidationKey.emailInvalidLocal;

    if (domain.isEmpty || domain.length > 253) {
      return ValidationKey.emailInvalidDomain;
    }
    if (domain.startsWith('.') || domain.endsWith('.')) {
      return ValidationKey.emailInvalidDomain;
    }
    if (domain.startsWith('-') || domain.endsWith('-')) {
      return ValidationKey.emailInvalidDomain;
    }
    if (domain.contains('..')) return ValidationKey.emailInvalidDomain;
    if (!domain.contains('.')) return ValidationKey.emailInvalidDomain;
    if (!_emailDomain.hasMatch(domain)) return ValidationKey.emailInvalidDomain;

    final tld = domain.split('.').last;
    if (tld.length < 2 || tld.length > 63) return ValidationKey.emailInvalidTld;
    if (RegExp(r'^[0-9]+$').hasMatch(tld)) return ValidationKey.emailInvalidTld;

    return null;
  }

  static ValidationKey? password(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return ValidationKey.passwordRequired;
    }
    if (value != value.trim()) return ValidationKey.passwordNoSpecialChar;
    if (value.length < 8) return ValidationKey.passwordTooShort;
    if (value.length > 32) return ValidationKey.passwordTooLong;
    if (!_uppercase.hasMatch(value)) return ValidationKey.passwordNoUppercase;
    if (!_lowercase.hasMatch(value)) return ValidationKey.passwordNoLowercase;
    if (!_digit.hasMatch(value)) return ValidationKey.passwordNoNumber;
    if (!_special.hasMatch(value)) return ValidationKey.passwordNoSpecialChar;
    if (RegExp(r'(.)\1{3,}').hasMatch(value)) {
      return ValidationKey.passwordTooWeak;
    }
    return null;
  }

  static ValidationKey? phone(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return ValidationKey.phoneRequired;

    final normalized = trimmed.replaceAll(RegExp(r'[\s\-().]+'), '');
    if (normalized.isEmpty) return ValidationKey.phoneInvalid;
    if (!RegExp(r'^\+?[0-9]+$').hasMatch(normalized))
      return ValidationKey.phoneInvalid;

    if (normalized.startsWith('+')) {
      if (!_phoneE164.hasMatch(normalized)) return ValidationKey.phoneInvalid;
      return null;
    }

    if (!_phoneLocal.hasMatch(normalized)) return ValidationKey.phoneInvalid;
    return null;
  }

  static ValidationKey? otp(String value, {int length = 6}) {
    if (value.trim().isEmpty) return ValidationKey.otpRequired;
    if (!_otpRegex.hasMatch(value)) return ValidationKey.otpInvalid;
    if (value.length < length) return ValidationKey.otpTooShort;
    return null;
  }

  static ValidationKey? name(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return ValidationKey.nameRequired;
    if (trimmed.length < 3) return ValidationKey.nameTooShort;
    if (trimmed.length > 50) return ValidationKey.nameTooLong;
    if (_consecutiveSpaces.hasMatch(trimmed)) return ValidationKey.nameInvalid;
    if (!_nameRegex.hasMatch(trimmed)) return ValidationKey.nameInvalid;
    return null;
  }

  static ValidationKey? required(String value) {
    if (value.trim().isEmpty) return ValidationKey.fieldRequired;
    return null;
  }

  static ValidationKey? confirmPassword(String value, String original) {
    if (value.isEmpty || value.trim().isEmpty) {
      return ValidationKey.passwordRequired;
    }
    if (value != original) return ValidationKey.passwordMismatch;
    return null;
  }
}
