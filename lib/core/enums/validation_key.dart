
enum ValidationKey {
emailRequired,
  emailInvalid,
  emailTooLong,
  emailInvalidFormat,
  emailInvalidLocal,
  emailInvalidDomain,
  emailInvalidTld,

  passwordRequired,
  passwordTooShort,
  passwordTooLong,
  passwordNoUppercase,
  passwordNoLowercase,
  passwordNoNumber,
  passwordNoSpecialChar,
  passwordMismatch,
  passwordTooWeak,

  nameRequired,
  nameTooShort,
  nameTooLong,
  nameInvalid,

  otpRequired,
  otpInvalid,
  otpTooShort,

  phoneRequired,
  phoneInvalid,

  fieldRequired,

  accountDeleted;

}