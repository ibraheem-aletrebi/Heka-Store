import 'package:heka_store/core/enums/validation_key.dart';

class FieldValidator {
  const FieldValidator._();


  static final RegExp _emailLocal = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+$",
  );
  static final RegExp _emailDomain = RegExp(
    r'^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$',
  );
  static final RegExp _uppercase = RegExp(r'[A-Z]');
  static final RegExp _lowercase = RegExp(r'[a-z]');
  static final RegExp _digit = RegExp(r'\d');
  static final RegExp _special = RegExp(r'[!@#\$%^&*(),.?":{}|<>\-_=+\[\]\\;'
      r"'/`~]");
  static final RegExp _phoneDigits = RegExp(r'^\+?[0-9]{10,15}$');
  static final RegExp _nameRegex = RegExp(
    r"^[\p{L}\p{M}\s'\-\.]+$",
    unicode: true,
  );
  static final RegExp _whitespaceOnly = RegExp(r'^\s*$');
  static final RegExp _consecutiveSpaces = RegExp(r'\s{2,}');


  static ValidationKey? email(String value) {
    final trimmed = value.trim();

    if (trimmed.isEmpty) return ValidationKey.emailRequired;
    if (trimmed.length > 254) return ValidationKey.emailInvalid;

    final atIndex = trimmed.lastIndexOf('@');
    if (atIndex <= 0) return ValidationKey.emailInvalid;

    final local = trimmed.substring(0, atIndex);
    final domain = trimmed.substring(atIndex + 1);

    if (local.length > 64) return ValidationKey.emailInvalid;
    if (local.startsWith('.') || local.endsWith('.')) return ValidationKey.emailInvalid;
    if (local.contains('..')) return ValidationKey.emailInvalid;
    if (!_emailLocal.hasMatch(local)) return ValidationKey.emailInvalid;

    if (domain.isEmpty || domain.length > 253) return ValidationKey.emailInvalid;
    if (domain.startsWith('.') || domain.endsWith('.')) return ValidationKey.emailInvalid;
    if (domain.startsWith('-') || domain.endsWith('-')) return ValidationKey.emailInvalid;
    if (domain.contains('..')) return ValidationKey.emailInvalid;
    if (!_emailDomain.hasMatch(domain)) return ValidationKey.emailInvalid;

    final tld = domain.split('.').last;
    if (tld.length < 2 || tld.length > 63) return ValidationKey.emailInvalid;

    return null;
  }


  static ValidationKey? password(String value) {
    if (value.isEmpty) return ValidationKey.passwordRequired;
    if (value.length < 8) return ValidationKey.passwordTooShort;
    if (value.length > 32) return ValidationKey.passwordTooLong;
    if (_whitespaceOnly.hasMatch(value)) return ValidationKey.passwordRequired;
    if (!_uppercase.hasMatch(value)) return ValidationKey.passwordNoUppercase;
    if (!_lowercase.hasMatch(value)) return ValidationKey.passwordNoLowercase;
    if (!_digit.hasMatch(value)) return ValidationKey.passwordNoNumber;
    if (!_special.hasMatch(value)) return ValidationKey.passwordNoSpecialChar;
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


  static ValidationKey? phone(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return ValidationKey.phoneRequired;

    final normalized = trimmed.replaceAll(RegExp(r'[\s\-()+]'), '');
    if (normalized.isEmpty) return ValidationKey.phoneInvalid;
    if (normalized.length < 7 || normalized.length > 15) return ValidationKey.phoneInvalid;
    if (!RegExp(r'^[0-9]+$').hasMatch(normalized)) return ValidationKey.phoneInvalid;
    if (!_phoneDigits.hasMatch(
      trimmed.startsWith('+') ? '+$normalized' : normalized,
    )) {
      return ValidationKey.phoneInvalid;
    }

    return null;
  }


  static ValidationKey? required(String value) {
    if (value.trim().isEmpty) return ValidationKey.fieldRequired;
    return null;
  }


  static ValidationKey? confirmPassword(String value, String original) {
    if (value.isEmpty) return ValidationKey.passwordRequired;
    if (value != original) return ValidationKey.passwordMismatch;
    return null;
  }
}