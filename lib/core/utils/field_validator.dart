
import 'package:heka_store/core/enums/validation_key.dart';

class FieldValidator {
  const FieldValidator._();


  static ValidationKey? email(String value) {
    if (value.isEmpty) return ValidationKey.emailRequired;
    if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return ValidationKey.emailInvalid;
    }
    return null;
  }


  static ValidationKey? password(String value) {
    if (value.isEmpty) return ValidationKey.passwordRequired;
    if (value.length < 6) return ValidationKey.passwordTooShort;
    if (value.length > 32) return ValidationKey.passwordTooLong;
    if (!RegExp(r'[A-Z]').hasMatch(value)) return ValidationKey.passwordNoUppercase;
    if (!RegExp(r'[a-z]').hasMatch(value)) return ValidationKey.passwordNoLowercase;
    if (!RegExp(r'[0-9]').hasMatch(value)) return ValidationKey.passwordNoNumber;
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) return ValidationKey.passwordNoSpecialChar;
    return null;
  }


  static ValidationKey? name(String value) {
    if (value.isEmpty) return ValidationKey.nameRequired;
    if (value.length < 3) return ValidationKey.nameTooShort;
    if (value.length > 50) return ValidationKey.nameTooLong;
    return null;
  }


  static ValidationKey? phone(String value) {
    if (value.isEmpty) return ValidationKey.phoneRequired;
    if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
      return ValidationKey.phoneInvalid;
    }
    return null;
  }


  static ValidationKey? required(String value) {
    if (value.isEmpty) return ValidationKey.fieldRequired;
    return null;
  }
}