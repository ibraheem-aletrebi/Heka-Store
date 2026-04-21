// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get lang {
    return Intl.message('English', name: 'lang', desc: '', args: []);
  }

  /// `Failed to load language.`
  String get languageLoadError {
    return Intl.message(
      'Failed to load language.',
      name: 'languageLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change language.`
  String get languageChangeError {
    return Intl.message(
      'Failed to change language.',
      name: 'languageChangeError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to switch language.`
  String get languageToggleError {
    return Intl.message(
      'Failed to switch language.',
      name: 'languageToggleError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load theme.`
  String get themeLoadError {
    return Intl.message(
      'Failed to load theme.',
      name: 'themeLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change theme.`
  String get themeChangeError {
    return Intl.message(
      'Failed to change theme.',
      name: 'themeChangeError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to switch theme.`
  String get themeToggleError {
    return Intl.message(
      'Failed to switch theme.',
      name: 'themeToggleError',
      desc: '',
      args: [],
    );
  }

  /// `You need to sign in to continue.`
  String get error_unauthorized_message {
    return Intl.message(
      'You need to sign in to continue.',
      name: 'error_unauthorized_message',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get error_unauthorized_action {
    return Intl.message(
      'Sign In',
      name: 'error_unauthorized_action',
      desc: '',
      args: [],
    );
  }

  /// `You've been signed out. Please sign in again.`
  String get error_token_expired_message {
    return Intl.message(
      'You\'ve been signed out. Please sign in again.',
      name: 'error_token_expired_message',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email first`
  String get error_email_not_verified_message {
    return Intl.message(
      'Please verify your email first',
      name: 'error_email_not_verified_message',
      desc: '',
      args: [],
    );
  }

  /// `Verify Email`
  String get error_email_not_verified_action {
    return Intl.message(
      'Verify Email',
      name: 'error_email_not_verified_action',
      desc: '',
      args: [],
    );
  }

  /// `Sign In Again`
  String get error_token_expired_action {
    return Intl.message(
      'Sign In Again',
      name: 'error_token_expired_action',
      desc: '',
      args: [],
    );
  }

  /// `Hmm, that email or password doesn't look right.`
  String get error_invalid_credentials_message {
    return Intl.message(
      'Hmm, that email or password doesn\'t look right.',
      name: 'error_invalid_credentials_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_invalid_credentials_action {
    return Intl.message(
      'Try Again',
      name: 'error_invalid_credentials_action',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been suspended. Please reach out to us.`
  String get error_account_blocked_message {
    return Intl.message(
      'Your account has been suspended. Please reach out to us.',
      name: 'error_account_blocked_message',
      desc: '',
      args: [],
    );
  }

  /// `Contact Support`
  String get error_account_blocked_action {
    return Intl.message(
      'Contact Support',
      name: 'error_account_blocked_action',
      desc: '',
      args: [],
    );
  }

  /// `Something doesn't look right. Please review your details.`
  String get error_bad_request_message {
    return Intl.message(
      'Something doesn\'t look right. Please review your details.',
      name: 'error_bad_request_message',
      desc: '',
      args: [],
    );
  }

  /// `Review & Retry`
  String get error_bad_request_action {
    return Intl.message(
      'Review & Retry',
      name: 'error_bad_request_action',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find what you're looking for.`
  String get error_not_found_message {
    return Intl.message(
      'We couldn\'t find what you\'re looking for.',
      name: 'error_not_found_message',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get error_not_found_action {
    return Intl.message(
      'Go Back',
      name: 'error_not_found_action',
      desc: '',
      args: [],
    );
  }

  /// `This action conflicts with existing data. Please try again.`
  String get error_conflict_message {
    return Intl.message(
      'This action conflicts with existing data. Please try again.',
      name: 'error_conflict_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_conflict_action {
    return Intl.message(
      'Try Again',
      name: 'error_conflict_action',
      desc: '',
      args: [],
    );
  }

  /// `Some fields need your attention before we can continue.`
  String get error_validation_failed_message {
    return Intl.message(
      'Some fields need your attention before we can continue.',
      name: 'error_validation_failed_message',
      desc: '',
      args: [],
    );
  }

  /// `Fix & Continue`
  String get error_validation_failed_action {
    return Intl.message(
      'Fix & Continue',
      name: 'error_validation_failed_action',
      desc: '',
      args: [],
    );
  }

  /// `You're moving too fast! Please wait a moment and try again.`
  String get error_too_many_requests_message {
    return Intl.message(
      'You\'re moving too fast! Please wait a moment and try again.',
      name: 'error_too_many_requests_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again Later`
  String get error_too_many_requests_action {
    return Intl.message(
      'Try Again Later',
      name: 'error_too_many_requests_action',
      desc: '',
      args: [],
    );
  }

  /// `You don't have access to this. Need help? Contact support.`
  String get error_forbidden_message {
    return Intl.message(
      'You don\'t have access to this. Need help? Contact support.',
      name: 'error_forbidden_message',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get error_forbidden_action {
    return Intl.message(
      'Go Back',
      name: 'error_forbidden_action',
      desc: '',
      args: [],
    );
  }

  /// `This is taking longer than expected. Check your connection.`
  String get error_connection_timeout_message {
    return Intl.message(
      'This is taking longer than expected. Check your connection.',
      name: 'error_connection_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_connection_timeout_action {
    return Intl.message(
      'Try Again',
      name: 'error_connection_timeout_action',
      desc: '',
      args: [],
    );
  }

  /// `You appear to be offline. Check your connection and try again.`
  String get error_no_internet_message {
    return Intl.message(
      'You appear to be offline. Check your connection and try again.',
      name: 'error_no_internet_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_no_internet_action {
    return Intl.message(
      'Try Again',
      name: 'error_no_internet_action',
      desc: '',
      args: [],
    );
  }

  /// `The request was cancelled.`
  String get error_request_cancelled_message {
    return Intl.message(
      'The request was cancelled.',
      name: 'error_request_cancelled_message',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get error_request_cancelled_action {
    return Intl.message(
      'Dismiss',
      name: 'error_request_cancelled_action',
      desc: '',
      args: [],
    );
  }

  /// `Our servers hit a snag. We're on it — please try again shortly.`
  String get error_server_error_message {
    return Intl.message(
      'Our servers hit a snag. We\'re on it — please try again shortly.',
      name: 'error_server_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_server_error_action {
    return Intl.message(
      'Try Again',
      name: 'error_server_error_action',
      desc: '',
      args: [],
    );
  }

  /// `We're having trouble reaching our servers. Please try again.`
  String get error_bad_gateway_message {
    return Intl.message(
      'We\'re having trouble reaching our servers. Please try again.',
      name: 'error_bad_gateway_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_bad_gateway_action {
    return Intl.message(
      'Try Again',
      name: 'error_bad_gateway_action',
      desc: '',
      args: [],
    );
  }

  /// `We're down for a bit. Please check back soon.`
  String get error_service_unavailable_message {
    return Intl.message(
      'We\'re down for a bit. Please check back soon.',
      name: 'error_service_unavailable_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again Later`
  String get error_service_unavailable_action {
    return Intl.message(
      'Try Again Later',
      name: 'error_service_unavailable_action',
      desc: '',
      args: [],
    );
  }

  /// `The server took too long to respond. Please try again.`
  String get error_gateway_timeout_message {
    return Intl.message(
      'The server took too long to respond. Please try again.',
      name: 'error_gateway_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_gateway_timeout_action {
    return Intl.message(
      'Try Again',
      name: 'error_gateway_timeout_action',
      desc: '',
      args: [],
    );
  }

  /// `Something unexpected happened. Please try again.`
  String get error_unknown_message {
    return Intl.message(
      'Something unexpected happened. Please try again.',
      name: 'error_unknown_message',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get error_unknown_action {
    return Intl.message(
      'Dismiss',
      name: 'error_unknown_action',
      desc: '',
      args: [],
    );
  }

  /// `Name contains invalid characters`
  String get nameInvalid {
    return Intl.message(
      'Name contains invalid characters',
      name: 'nameInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordMismatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Code resent successfully`
  String get otpResentSuccess {
    return Intl.message(
      'Code resent successfully',
      name: 'otpResentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get emailInvalid {
    return Intl.message(
      'Email is invalid',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Email is too long`
  String get emailTooLong {
    return Intl.message(
      'Email is too long',
      name: 'emailTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format, make sure it contains @`
  String get emailInvalidFormat {
    return Intl.message(
      'Invalid email format, make sure it contains @',
      name: 'emailInvalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `The part before @ contains invalid characters`
  String get emailInvalidLocal {
    return Intl.message(
      'The part before @ contains invalid characters',
      name: 'emailInvalidLocal',
      desc: '',
      args: [],
    );
  }

  /// `The domain after @ is invalid`
  String get emailInvalidDomain {
    return Intl.message(
      'The domain after @ is invalid',
      name: 'emailInvalidDomain',
      desc: '',
      args: [],
    );
  }

  /// `Invalid domain extension (e.g. .com, .net)`
  String get emailInvalidTld {
    return Intl.message(
      'Invalid domain extension (e.g. .com, .net)',
      name: 'emailInvalidTld',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at most 32 characters`
  String get passwordTooLong {
    return Intl.message(
      'Password must be at most 32 characters',
      name: 'passwordTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain an uppercase letter`
  String get passwordNoUppercase {
    return Intl.message(
      'Password must contain an uppercase letter',
      name: 'passwordNoUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain a lowercase letter`
  String get passwordNoLowercase {
    return Intl.message(
      'Password must contain a lowercase letter',
      name: 'passwordNoLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain a number`
  String get passwordNoNumber {
    return Intl.message(
      'Password must contain a number',
      name: 'passwordNoNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain a special character`
  String get passwordNoSpecialChar {
    return Intl.message(
      'Password must contain a special character',
      name: 'passwordNoSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get nameRequired {
    return Intl.message(
      'Name is required',
      name: 'nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 3 characters`
  String get nameTooShort {
    return Intl.message(
      'Name must be at least 3 characters',
      name: 'nameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at most 50 characters`
  String get nameTooLong {
    return Intl.message(
      'Name must be at most 50 characters',
      name: 'nameTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get phoneRequired {
    return Intl.message(
      'Phone number is required',
      name: 'phoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is invalid`
  String get phoneInvalid {
    return Intl.message(
      'Phone number is invalid',
      name: 'phoneInvalid',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password reset successfully`
  String get resetPasswordSuccess {
    return Intl.message(
      'Password reset successfully',
      name: 'resetPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Password is too weak, avoid repeating characters`
  String get passwordTooWeak {
    return Intl.message(
      'Password is too weak, avoid repeating characters',
      name: 'passwordTooWeak',
      desc: '',
      args: [],
    );
  }

  /// `Verification code is required`
  String get otpRequired {
    return Intl.message(
      'Verification code is required',
      name: 'otpRequired',
      desc: '',
      args: [],
    );
  }

  /// `Verification code must contain numbers only`
  String get otpInvalid {
    return Intl.message(
      'Verification code must contain numbers only',
      name: 'otpInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Verification code is incomplete`
  String get otpTooShort {
    return Intl.message(
      'Verification code is incomplete',
      name: 'otpTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Heka`
  String get onboardingTitle {
    return Intl.message(
      'Welcome to Heka',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Connect directly with local artisans and trusted vendors. From handcrafted treasures to modern Egyptian design all in one trusted marketplace.`
  String get onboardingBody {
    return Intl.message(
      'Connect directly with local artisans and trusted vendors. From handcrafted treasures to modern Egyptian design all in one trusted marketplace.',
      name: 'onboardingBody',
      desc: '',
      args: [],
    );
  }

  /// `Explore Heka now`
  String get exploreHeka {
    return Intl.message(
      'Explore Heka now',
      name: 'exploreHeka',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login to your account`
  String get loginToYourAccount {
    return Intl.message(
      'Login to your account',
      name: 'loginToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Get started now`
  String get getStartedNow {
    return Intl.message(
      'Get started now',
      name: 'getStartedNow',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and password to log in`
  String get enterYourEmailAndPasswordToLogin {
    return Intl.message(
      'Enter your email and password to log in',
      name: 'enterYourEmailAndPasswordToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Or login with`
  String get orLoginWith {
    return Intl.message(
      'Or login with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Search for a place`
  String get searchForLocation {
    return Intl.message(
      'Search for a place',
      name: 'searchForLocation',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get noResultsFound {
    return Intl.message(
      'No results found',
      name: 'noResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `Fetching address...`
  String get fitchingAddress {
    return Intl.message(
      'Fetching address...',
      name: 'fitchingAddress',
      desc: '',
      args: [],
    );
  }

  /// `Create an account to continue`
  String get createAccountToContinue {
    return Intl.message(
      'Create an account to continue',
      name: 'createAccountToContinue',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message('First name', name: 'firstName', desc: '', args: []);
  }

  /// `Last name`
  String get lastName {
    return Intl.message('Last name', name: 'lastName', desc: '', args: []);
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree to `
  String get iAgreeTo {
    return Intl.message('I agree to ', name: 'iAgreeTo', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(' and ', name: 'and', desc: '', args: []);
  }

  /// `Terms of use`
  String get termsOfUse {
    return Intl.message('Terms of use', name: 'termsOfUse', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Or register with`
  String get orRegisterWith {
    return Intl.message(
      'Or register with',
      name: 'orRegisterWith',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get signupWithGoogle {
    return Intl.message(
      'Sign up with Google',
      name: 'signupWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Let's reset your password`
  String get resetPasswordRequestTitle {
    return Intl.message(
      'Let\'s reset your password',
      name: 'resetPasswordRequestTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we'll guide you through the reset process.`
  String get resetPasswordRequestBody {
    return Intl.message(
      'Enter your email and we\'ll guide you through the reset process.',
      name: 'resetPasswordRequestBody',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Almost there!`
  String get resetPasswordOtpTitle {
    return Intl.message(
      'Almost there!',
      name: 'resetPasswordOtpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we sent to your email to reset your password.`
  String get resetPasswordOtpBody {
    return Intl.message(
      'Enter the code we sent to your email to reset your password.',
      name: 'resetPasswordOtpBody',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message('Resend Code', name: 'resendCode', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Set a New Password`
  String get resetPasswordNewPasswordTitle {
    return Intl.message(
      'Set a New Password',
      name: 'resetPasswordNewPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password below to secure your account.`
  String get resetPasswordNewPasswordBody {
    return Intl.message(
      'Enter your new password below to secure your account.',
      name: 'resetPasswordNewPasswordBody',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Location permission denied. Please allow access to your location.`
  String get locationPermissionDenied {
    return Intl.message(
      'Location permission denied. Please allow access to your location.',
      name: 'locationPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is permanently denied. You can enable it from settings.`
  String get locationPermissionDeniedForever {
    return Intl.message(
      'Location permission is permanently denied. You can enable it from settings.',
      name: 'locationPermissionDeniedForever',
      desc: '',
      args: [],
    );
  }

  /// `Permission Required`
  String get permissionRequired {
    return Intl.message(
      'Permission Required',
      name: 'permissionRequired',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Open Settings`
  String get openSettings {
    return Intl.message(
      'Open Settings',
      name: 'openSettings',
      desc: '',
      args: [],
    );
  }

  /// `Your Location`
  String get selectLocationTitle {
    return Intl.message(
      'Your Location',
      name: 'selectLocationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search or tap anywhere on the map`
  String get selectLocationSubtitle {
    return Intl.message(
      'Search or tap anywhere on the map',
      name: 'selectLocationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Fetching address...`
  String get fetchingAddress {
    return Intl.message(
      'Fetching address...',
      name: 'fetchingAddress',
      desc: '',
      args: [],
    );
  }

  /// `No location selected yet`
  String get noLocationSelected {
    return Intl.message(
      'No location selected yet',
      name: 'noLocationSelected',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Location`
  String get confirmLocation {
    return Intl.message(
      'Confirm Location',
      name: 'confirmLocation',
      desc: '',
      args: [],
    );
  }

  /// `Skip for now`
  String get skipForNow {
    return Intl.message('Skip for now', name: 'skipForNow', desc: '', args: []);
  }

  /// `Current location`
  String get gpsButtonTooltip {
    return Intl.message(
      'Current location',
      name: 'gpsButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get locationDetailAddress {
    return Intl.message(
      'Address',
      name: 'locationDetailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Coordinates`
  String get locationDetailCoordinates {
    return Intl.message(
      'Coordinates',
      name: 'locationDetailCoordinates',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Email`
  String get verifyEmailOtpTitle {
    return Intl.message(
      'Verify Your Email',
      name: 'verifyEmailOtpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we sent to your email`
  String get verifyEmailOtpBody {
    return Intl.message(
      'Enter the code we sent to your email',
      name: 'verifyEmailOtpBody',
      desc: '',
      args: [],
    );
  }

  /// `Make this as a default address`
  String get setAsDefaultAddress {
    return Intl.message(
      'Make this as a default address',
      name: 'setAsDefaultAddress',
      desc: '',
      args: [],
    );
  }

  /// `Address Nickname`
  String get addressNickName {
    return Intl.message(
      'Address Nickname',
      name: 'addressNickName',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Work`
  String get work {
    return Intl.message('Work', name: 'work', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `e.g. Mom's house`
  String get nicknameHint {
    return Intl.message(
      'e.g. Mom\'s house',
      name: 'nicknameHint',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get location. Please try again.`
  String get failedToGetLocation {
    return Intl.message(
      'Failed to get location. Please try again.',
      name: 'failedToGetLocation',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Edit Profile`
  String get EditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'EditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Address Book`
  String get AddressBook {
    return Intl.message(
      'Address Book',
      name: 'AddressBook',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get addNewAddress {
    return Intl.message(
      'Add New Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultAddress {
    return Intl.message('Default', name: 'defaultAddress', desc: '', args: []);
  }

  /// `Edit`
  String get Edit {
    return Intl.message('Edit', name: 'Edit', desc: '', args: []);
  }

  /// `Set as Default`
  String get setAsDefault {
    return Intl.message(
      'Set as Default',
      name: 'setAsDefault',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Delete Address?`
  String get deleteAddressTitle {
    return Intl.message(
      'Delete Address?',
      name: 'deleteAddressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Remove "{address}"?\nThis action cannot be undone.`
  String deleteAddressMessage(String address) {
    return Intl.message(
      'Remove "$address"?\nThis action cannot be undone.',
      name: 'deleteAddressMessage',
      desc: '',
      args: [address],
    );
  }

  /// `Try a different name, street or city.`
  String get tryDifferentSearch {
    return Intl.message(
      'Try a different name, street or city.',
      name: 'tryDifferentSearch',
      desc: '',
      args: [],
    );
  }

  /// `No addresses yet`
  String get noAddressesYet {
    return Intl.message(
      'No addresses yet',
      name: 'noAddressesYet',
      desc: '',
      args: [],
    );
  }

  /// `Add your first delivery address\nto get started.`
  String get addFirstAddress {
    return Intl.message(
      'Add your first delivery address\nto get started.',
      name: 'addFirstAddress',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get addAddress {
    return Intl.message('Add Address', name: 'addAddress', desc: '', args: []);
  }

  /// `Search by name, street, city…`
  String get searchAddressHint {
    return Intl.message(
      'Search by name, street, city…',
      name: 'searchAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Good morning`
  String get goodMorning {
    return Intl.message(
      'Good morning',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Good afternoon`
  String get goodAfternoon {
    return Intl.message(
      'Good afternoon',
      name: 'goodAfternoon',
      desc: '',
      args: [],
    );
  }

  /// `Good evening`
  String get goodEvening {
    return Intl.message(
      'Good evening',
      name: 'goodEvening',
      desc: '',
      args: [],
    );
  }

  /// `Guest`
  String get guest {
    return Intl.message('Guest', name: 'guest', desc: '', args: []);
  }

  /// `Hello`
  String get hello {
    return Intl.message('Hello', name: 'hello', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Out of Stock`
  String get out_of_stock {
    return Intl.message(
      'Out of Stock',
      name: 'out_of_stock',
      desc: '',
      args: [],
    );
  }

  /// `Select Options`
  String get select_options {
    return Intl.message(
      'Select Options',
      name: 'select_options',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart {
    return Intl.message('Add to Cart', name: 'add_to_cart', desc: '', args: []);
  }

  /// `Out of stock — remove or save for later`
  String get cartItemOutOfStockMessage {
    return Intl.message(
      'Out of stock — remove or save for later',
      name: 'cartItemOutOfStockMessage',
      desc: 'Banner shown on a cart item tile when the product is out of stock',
      args: [],
    );
  }

  /// `Only {count} left!`
  String cartItemOnlyXLeft(int count) {
    return Intl.message(
      'Only $count left!',
      name: 'cartItemOnlyXLeft',
      desc: 'Low-stock chip label',
      args: [count],
    );
  }

  /// `You save {amount}`
  String cartItemYouSave(String amount) {
    return Intl.message(
      'You save $amount',
      name: 'cartItemYouSave',
      desc: 'Savings chip label shown when item has a discount',
      args: [amount],
    );
  }

  /// `Edit variants / options`
  String get cartItemEditTooltip {
    return Intl.message(
      'Edit variants / options',
      name: 'cartItemEditTooltip',
      desc: 'Tooltip on the edit (tune) icon button',
      args: [],
    );
  }

  /// `Remove`
  String get cartItemRemove {
    return Intl.message(
      'Remove',
      name: 'cartItemRemove',
      desc:
          'Remove link shown at the bottom of a cart item tile and inside the swipe-to-delete background',
      args: [],
    );
  }

  /// `Remove item?`
  String get cartItemRemoveDialogTitle {
    return Intl.message(
      'Remove item?',
      name: 'cartItemRemoveDialogTitle',
      desc: 'Title of the confirmation dialog when removing a cart item',
      args: [],
    );
  }

  /// `Remove "{productName}" from your cart?`
  String cartItemRemoveDialogContent(String productName) {
    return Intl.message(
      'Remove "$productName" from your cart?',
      name: 'cartItemRemoveDialogContent',
      desc: 'Body of the confirmation dialog when removing a cart item',
      args: [productName],
    );
  }

  /// `Keep`
  String get cartItemRemoveDialogKeep {
    return Intl.message(
      'Keep',
      name: 'cartItemRemoveDialogKeep',
      desc: 'Cancel button in the remove-item confirmation dialog',
      args: [],
    );
  }

  /// `Remove`
  String get cartItemRemoveDialogConfirm {
    return Intl.message(
      'Remove',
      name: 'cartItemRemoveDialogConfirm',
      desc: 'Confirm button in the remove-item confirmation dialog',
      args: [],
    );
  }

  /// `Failed to load product details`
  String get cartItemLoadError {
    return Intl.message(
      'Failed to load product details',
      name: 'cartItemLoadError',
      desc: 'Snackbar message shown when product details fail to load',
      args: [],
    );
  }

  /// `Total`
  String get cartBottomBarTotal {
    return Intl.message(
      'Total',
      name: 'cartBottomBarTotal',
      desc: 'Label above the total price in the bottom bar and summary panel',
      args: [],
    );
  }

  /// `EGP {amount}`
  String cartBottomBarEgpAmount(String amount) {
    return Intl.message(
      'EGP $amount',
      name: 'cartBottomBarEgpAmount',
      desc: 'Formatted EGP price string',
      args: [amount],
    );
  }

  /// `Saving EGP {amount}`
  String cartBottomBarSaving(String amount) {
    return Intl.message(
      'Saving EGP $amount',
      name: 'cartBottomBarSaving',
      desc: 'Savings label shown below the total price in the bottom bar',
      args: [amount],
    );
  }

  /// `Sub-total`
  String get cartSummarySubtotal {
    return Intl.message(
      'Sub-total',
      name: 'cartSummarySubtotal',
      desc: 'Sub-total label in the order summary panel',
      args: [],
    );
  }

  /// `Shipping fee`
  String get cartSummaryShipping {
    return Intl.message(
      'Shipping fee',
      name: 'cartSummaryShipping',
      desc: 'Shipping fee label in the order summary panel',
      args: [],
    );
  }

  /// `Free`
  String get cartSummaryShippingFree {
    return Intl.message(
      'Free',
      name: 'cartSummaryShippingFree',
      desc: 'Value shown when shipping cost is zero',
      args: [],
    );
  }

  /// `Discount`
  String get cartSummaryDiscount {
    return Intl.message(
      'Discount',
      name: 'cartSummaryDiscount',
      desc: 'Discount row label in the order summary panel',
      args: [],
    );
  }

  /// `Some items are out of stock`
  String get cartSummaryOutOfStockWarning {
    return Intl.message(
      'Some items are out of stock',
      name: 'cartSummaryOutOfStockWarning',
      desc:
          'Warning line inside the order summary panel when there are out-of-stock items',
      args: [],
    );
  }

  /// `Add EGP {amount} more for free shipping!`
  String cartFreeShippingProgress(String amount) {
    return Intl.message(
      'Add EGP $amount more for free shipping!',
      name: 'cartFreeShippingProgress',
      desc:
          'Free-shipping progress banner text showing how much more the user needs to spend',
      args: [amount],
    );
  }

  /// `You've unlocked free shipping! 🎉`
  String get cartFreeShippingEarned {
    return Intl.message(
      'You\'ve unlocked free shipping! 🎉',
      name: 'cartFreeShippingEarned',
      desc: 'Banner shown when the user qualifies for free shipping',
      args: [],
    );
  }

  /// `Remove unavailable items to checkout`
  String get cartOutOfStockCheckoutBlocked {
    return Intl.message(
      'Remove unavailable items to checkout',
      name: 'cartOutOfStockCheckoutBlocked',
      desc:
          'Inline warning shown in the bottom bar when out-of-stock items block checkout',
      args: [],
    );
  }

  /// `Clear all`
  String get cartOutOfStockClearAll {
    return Intl.message(
      'Clear all',
      name: 'cartOutOfStockClearAll',
      desc:
          'Button inside the out-of-stock warning to remove all unavailable items at once',
      args: [],
    );
  }

  /// `Checkout`
  String get cartCheckoutLabel {
    return Intl.message(
      'Checkout',
      name: 'cartCheckoutLabel',
      desc: 'Primary checkout button label',
      args: [],
    );
  }

  /// `Checkout unavailable`
  String get cartCheckoutBlockedLabel {
    return Intl.message(
      'Checkout unavailable',
      name: 'cartCheckoutBlockedLabel',
      desc:
          'Checkout button label when checkout is blocked by out-of-stock items',
      args: [],
    );
  }

  /// `Discounted Subtotal`
  String get discountedSubTotal {
    return Intl.message(
      'Discounted Subtotal',
      name: 'discountedSubTotal',
      desc: 'Subtotal after applying discount',
      args: [],
    );
  }

  /// `Categories`
  String get Categories {
    return Intl.message('Categories', name: 'Categories', desc: '', args: []);
  }

  /// `No Sub Categories`
  String get noSubCategories {
    return Intl.message(
      'No Sub Categories',
      name: 'noSubCategories',
      desc: '',
      args: [],
    );
  }

  /// `Items You May Like`
  String get itemsYouMayLike {
    return Intl.message(
      'Items You May Like',
      name: 'itemsYouMayLike',
      desc: '',
      args: [],
    );
  }

  /// `Explore Categories`
  String get exploreCategories {
    return Intl.message(
      'Explore Categories',
      name: 'exploreCategories',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message('View All', name: 'viewAll', desc: '', args: []);
  }

  /// `Recommended for you`
  String get recommendedForYou {
    return Intl.message(
      'Recommended for you',
      name: 'recommendedForYou',
      desc: '',
      args: [],
    );
  }

  /// `Featured Brands`
  String get featuredBrands {
    return Intl.message(
      'Featured Brands',
      name: 'featuredBrands',
      desc: '',
      args: [],
    );
  }

  /// `Brand Stores`
  String get brandStores {
    return Intl.message(
      'Brand Stores',
      name: 'brandStores',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Your shopping cart looks empty`
  String get cartEmptyTitle {
    return Intl.message(
      'Your shopping cart looks empty',
      name: 'cartEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `add items to your cart to get started.`
  String get cartEmptySubtitle {
    return Intl.message(
      'add items to your cart to get started.',
      name: 'cartEmptySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Start Shopping`
  String get startShopping {
    return Intl.message(
      'Start Shopping',
      name: 'startShopping',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get favourites {
    return Intl.message('Favourites', name: 'favourites', desc: '', args: []);
  }

  /// `No Saved Items!`
  String get emptyFavoriteTitle {
    return Intl.message(
      'No Saved Items!',
      name: 'emptyFavoriteTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any saved items. Go to home and add some.`
  String get emptyFavoriteBody {
    return Intl.message(
      'You don\'t have any saved items. Go to home and add some.',
      name: 'emptyFavoriteBody',
      desc: '',
      args: [],
    );
  }

  /// `Items you previously viewed`
  String get previouslyViewedItem {
    return Intl.message(
      'Items you previously viewed',
      name: 'previouslyViewedItem',
      desc: '',
      args: [],
    );
  }

  /// `Added to wishlist`
  String get addedToWishlist {
    return Intl.message(
      'Added to wishlist',
      name: 'addedToWishlist',
      desc: '',
      args: [],
    );
  }

  /// `Removed from wishlist`
  String get removedFromWishlist {
    return Intl.message(
      'Removed from wishlist',
      name: 'removedFromWishlist',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to save your wishlist`
  String get guestWishlistTitle {
    return Intl.message(
      'Sign in to save your wishlist',
      name: 'guestWishlistTitle',
      desc: '',
      args: [],
    );
  }

  /// `You have {count} saved items. Sign in to keep them`
  String guestWishlistSubtitle(int count) {
    return Intl.message(
      'You have $count saved items. Sign in to keep them',
      name: 'guestWishlistSubtitle',
      desc: '',
      args: [count],
    );
  }

  /// `Deliver to`
  String get addressPickerTitle {
    return Intl.message(
      'Deliver to',
      name: 'addressPickerTitle',
      desc: 'Title of the address picker bottom sheet',
      args: [],
    );
  }

  /// `Search addresses...`
  String get addressSearchHint {
    return Intl.message(
      'Search addresses...',
      name: 'addressSearchHint',
      desc: 'Placeholder in the address search field',
      args: [],
    );
  }

  /// `Add new address`
  String get addressPickerAddNew {
    return Intl.message(
      'Add new address',
      name: 'addressPickerAddNew',
      desc: 'Button to navigate to add-address screen',
      args: [],
    );
  }

  /// `Default`
  String get addressDefaultBadge {
    return Intl.message(
      'Default',
      name: 'addressDefaultBadge',
      desc: 'Badge shown on the default address tile',
      args: [],
    );
  }

  /// `Edit`
  String get addressActionEdit {
    return Intl.message(
      'Edit',
      name: 'addressActionEdit',
      desc: 'Edit action on address tile',
      args: [],
    );
  }

  /// `Delete`
  String get addressActionDelete {
    return Intl.message(
      'Delete',
      name: 'addressActionDelete',
      desc: 'Delete action on address tile',
      args: [],
    );
  }

  /// `Delete address?`
  String get addressDeleteDialogTitle {
    return Intl.message(
      'Delete address?',
      name: 'addressDeleteDialogTitle',
      desc: 'Title of delete-address confirmation dialog',
      args: [],
    );
  }

  /// `Remove "{title}" from your saved addresses?`
  String addressDeleteDialogContent(String title) {
    return Intl.message(
      'Remove "$title" from your saved addresses?',
      name: 'addressDeleteDialogContent',
      desc: 'Body of delete-address confirmation dialog',
      args: [title],
    );
  }

  /// `Keep`
  String get addressDeleteDialogKeep {
    return Intl.message(
      'Keep',
      name: 'addressDeleteDialogKeep',
      desc: 'Cancel button in delete-address dialog',
      args: [],
    );
  }

  /// `Delete`
  String get addressDeleteDialogConfirm {
    return Intl.message(
      'Delete',
      name: 'addressDeleteDialogConfirm',
      desc: 'Confirm button in delete-address dialog',
      args: [],
    );
  }

  /// `No saved addresses`
  String get addressEmptyTitle {
    return Intl.message(
      'No saved addresses',
      name: 'addressEmptyTitle',
      desc: 'Empty state title when no addresses exist',
      args: [],
    );
  }

  /// `Add an address to get started`
  String get addressEmptySubtitle {
    return Intl.message(
      'Add an address to get started',
      name: 'addressEmptySubtitle',
      desc: 'Empty state subtitle when no addresses exist',
      args: [],
    );
  }

  /// `No addresses found`
  String get addressSearchNoResults {
    return Intl.message(
      'No addresses found',
      name: 'addressSearchNoResults',
      desc: 'Empty state title when search returns nothing',
      args: [],
    );
  }

  /// `Try a different search term`
  String get addressSearchNoResultsHint {
    return Intl.message(
      'Try a different search term',
      name: 'addressSearchNoResultsHint',
      desc: 'Empty state subtitle when search returns nothing',
      args: [],
    );
  }

  /// `Couldn't load addresses`
  String get addressLoadError {
    return Intl.message(
      'Couldn\'t load addresses',
      name: 'addressLoadError',
      desc: 'Error state title when address list fails to load',
      args: [],
    );
  }

  /// `Try again`
  String get addressRetry {
    return Intl.message(
      'Try again',
      name: 'addressRetry',
      desc: 'Retry button in error state',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get addressGenericError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'addressGenericError',
      desc: 'Generic error message for address operations',
      args: [],
    );
  }

  /// `Sign in to save wishlist`
  String get loginToSave {
    return Intl.message(
      'Sign in to save wishlist',
      name: 'loginToSave',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get addToCart {
    return Intl.message('Add to Cart', name: 'addToCart', desc: '', args: []);
  }

  /// `Best Seller`
  String get bestSeller {
    return Intl.message('Best Seller', name: 'bestSeller', desc: '', args: []);
  }

  /// `Off`
  String get off {
    return Intl.message('Off', name: 'off', desc: '', args: []);
  }

  /// `Free Shipping`
  String get freeShipping {
    return Intl.message(
      'Free Shipping',
      name: 'freeShipping',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `Delivery Address`
  String get deliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message('Card', name: 'card', desc: '', args: []);
  }

  /// `Cash`
  String get cash {
    return Intl.message('Cash', name: 'cash', desc: '', args: []);
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Sub-total`
  String get subtotal {
    return Intl.message('Sub-total', name: 'subtotal', desc: '', args: []);
  }

  /// `VAT (%)`
  String get vat {
    return Intl.message('VAT (%)', name: 'vat', desc: '', args: []);
  }

  /// `Shipping fee`
  String get shippingFee {
    return Intl.message(
      'Shipping fee',
      name: 'shippingFee',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Enter Coupon code`
  String get enterCouponCode {
    return Intl.message(
      'Enter Coupon code',
      name: 'enterCouponCode',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Place order`
  String get placeOrder {
    return Intl.message('Place order', name: 'placeOrder', desc: '', args: []);
  }

  /// `Saved Cards`
  String get savedCards {
    return Intl.message('Saved Cards', name: 'savedCards', desc: '', args: []);
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message('Add New Card', name: 'addNewCard', desc: '', args: []);
  }

  /// `New Card`
  String get newCard {
    return Intl.message('New Card', name: 'newCard', desc: '', args: []);
  }

  /// `Add Debit or Credit Card`
  String get addDebitOrCreditCard {
    return Intl.message(
      'Add Debit or Credit Card',
      name: 'addDebitOrCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message('Card number', name: 'cardNumber', desc: '', args: []);
  }

  /// `Enter your card number`
  String get enterYourCardNumber {
    return Intl.message(
      'Enter your card number',
      name: 'enterYourCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message('Expiry Date', name: 'expiryDate', desc: '', args: []);
  }

  /// `Security Code`
  String get securityCode {
    return Intl.message(
      'Security Code',
      name: 'securityCode',
      desc: '',
      args: [],
    );
  }

  /// `Add card`
  String get addCard {
    return Intl.message('Add card', name: 'addCard', desc: '', args: []);
  }

  /// `Invalid card number`
  String get invalidCardNumber {
    return Intl.message(
      'Invalid card number',
      name: 'invalidCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid expiry`
  String get invalidExpiry {
    return Intl.message(
      'Invalid expiry',
      name: 'invalidExpiry',
      desc: '',
      args: [],
    );
  }

  /// `Invalid CVV`
  String get invalidCvv {
    return Intl.message('Invalid CVV', name: 'invalidCvv', desc: '', args: []);
  }

  /// `Checkout`
  String get createOrderTitle {
    return Intl.message(
      'Checkout',
      name: 'createOrderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Delivery address`
  String get orderSectionDeliveryAddress {
    return Intl.message(
      'Delivery address',
      name: 'orderSectionDeliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Contact details`
  String get orderSectionContact {
    return Intl.message(
      'Contact details',
      name: 'orderSectionContact',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get orderSectionPayment {
    return Intl.message(
      'Payment method',
      name: 'orderSectionPayment',
      desc: '',
      args: [],
    );
  }

  /// `Order notes`
  String get orderSectionNotes {
    return Intl.message(
      'Order notes',
      name: 'orderSectionNotes',
      desc: '',
      args: [],
    );
  }

  /// `optional`
  String get orderOptional {
    return Intl.message('optional', name: 'orderOptional', desc: '', args: []);
  }

  /// `First name`
  String get orderFieldFirstName {
    return Intl.message(
      'First name',
      name: 'orderFieldFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get orderFieldLastName {
    return Intl.message(
      'Last name',
      name: 'orderFieldLastName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get orderFieldPhone {
    return Intl.message(
      'Phone number',
      name: 'orderFieldPhone',
      desc: '',
      args: [],
    );
  }

  /// `Any special instructions...`
  String get orderFieldNotesHint {
    return Intl.message(
      'Any special instructions...',
      name: 'orderFieldNotesHint',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get orderFieldRequired {
    return Intl.message(
      'This field is required',
      name: 'orderFieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid phone number`
  String get orderFieldPhoneInvalid {
    return Intl.message(
      'Enter a valid phone number',
      name: 'orderFieldPhoneInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Cash on delivery`
  String get orderPaymentCash {
    return Intl.message(
      'Cash on delivery',
      name: 'orderPaymentCash',
      desc: '',
      args: [],
    );
  }

  /// `Pay when your order arrives`
  String get orderPaymentCashSubtitle {
    return Intl.message(
      'Pay when your order arrives',
      name: 'orderPaymentCashSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Online payment`
  String get orderPaymentOnline {
    return Intl.message(
      'Online payment',
      name: 'orderPaymentOnline',
      desc: '',
      args: [],
    );
  }

  /// `Visa, Mastercard via Paymob`
  String get orderPaymentOnlineSubtitle {
    return Intl.message(
      'Visa, Mastercard via Paymob',
      name: 'orderPaymentOnlineSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Placing your order...`
  String get orderPlacingOrder {
    return Intl.message(
      'Placing your order...',
      name: 'orderPlacingOrder',
      desc: '',
      args: [],
    );
  }

  /// `Confirm order`
  String get orderConfirmCash {
    return Intl.message(
      'Confirm order',
      name: 'orderConfirmCash',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to payment`
  String get orderProceedToPayment {
    return Intl.message(
      'Proceed to payment',
      name: 'orderProceedToPayment',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get orderGenericError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'orderGenericError',
      desc: '',
      args: [],
    );
  }

  /// `Secure payment`
  String get paymentWebViewTitle {
    return Intl.message(
      'Secure payment',
      name: 'paymentWebViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load payment page`
  String get paymentWebViewLoadError {
    return Intl.message(
      'Failed to load payment page',
      name: 'paymentWebViewLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Order placed!`
  String get orderSuccessTitle {
    return Intl.message(
      'Order placed!',
      name: 'orderSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your order is confirmed. We'll contact you before delivery.`
  String get orderSuccessSubtitleCod {
    return Intl.message(
      'Your order is confirmed. We\'ll contact you before delivery.',
      name: 'orderSuccessSubtitleCod',
      desc: '',
      args: [],
    );
  }

  /// `Payment received. Your order is on its way!`
  String get orderSuccessSubtitleOnline {
    return Intl.message(
      'Payment received. Your order is on its way!',
      name: 'orderSuccessSubtitleOnline',
      desc: '',
      args: [],
    );
  }

  /// `Order number`
  String get orderSuccessOrderNumber {
    return Intl.message(
      'Order number',
      name: 'orderSuccessOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get orderSuccessPaymentMethod {
    return Intl.message(
      'Payment',
      name: 'orderSuccessPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get orderSuccessTotal {
    return Intl.message('Total', name: 'orderSuccessTotal', desc: '', args: []);
  }

  /// `Status`
  String get orderSuccessStatus {
    return Intl.message(
      'Status',
      name: 'orderSuccessStatus',
      desc: '',
      args: [],
    );
  }

  /// `Track my order`
  String get orderSuccessTrackOrder {
    return Intl.message(
      'Track my order',
      name: 'orderSuccessTrackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Back to home`
  String get orderSuccessBackToHome {
    return Intl.message(
      'Back to home',
      name: 'orderSuccessBackToHome',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get orderAddressChange {
    return Intl.message(
      'Change',
      name: 'orderAddressChange',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't load your addresses`
  String get orderAddressLoadError {
    return Intl.message(
      'Couldn\'t load your addresses',
      name: 'orderAddressLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Add a delivery address`
  String get orderAddressAddNew {
    return Intl.message(
      'Add a delivery address',
      name: 'orderAddressAddNew',
      desc: '',
      args: [],
    );
  }

  /// `Please select a delivery address`
  String get orderNoAddressSelected {
    return Intl.message(
      'Please select a delivery address',
      name: 'orderNoAddressSelected',
      desc: '',
      args: [],
    );
  }

  /// `Connecting to payment...`
  String get paymentWebViewConnecting {
    return Intl.message(
      'Connecting to payment...',
      name: 'paymentWebViewConnecting',
      desc: '',
      args: [],
    );
  }

  /// `Secure connection established`
  String get paymentWebViewSecure {
    return Intl.message(
      'Secure connection established',
      name: 'paymentWebViewSecure',
      desc: '',
      args: [],
    );
  }

  /// `Your payment is encrypted and secure`
  String get paymentWebViewSecureNote {
    return Intl.message(
      'Your payment is encrypted and secure',
      name: 'paymentWebViewSecureNote',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get paymentWebViewRetry {
    return Intl.message(
      'Retry',
      name: 'paymentWebViewRetry',
      desc: '',
      args: [],
    );
  }

  /// `Check your connection and try again`
  String get paymentWebViewLoadErrorHint {
    return Intl.message(
      'Check your connection and try again',
      name: 'paymentWebViewLoadErrorHint',
      desc: '',
      args: [],
    );
  }

  /// `Cancel payment?`
  String get paymentCancelDialogTitle {
    return Intl.message(
      'Cancel payment?',
      name: 'paymentCancelDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been placed. If you cancel now you can complete payment later.`
  String get paymentCancelDialogContent {
    return Intl.message(
      'Your order has been placed. If you cancel now you can complete payment later.',
      name: 'paymentCancelDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `Continue paying`
  String get paymentCancelDialogContinue {
    return Intl.message(
      'Continue paying',
      name: 'paymentCancelDialogContinue',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get paymentCancelDialogConfirm {
    return Intl.message(
      'Cancel',
      name: 'paymentCancelDialogConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Payment failed`
  String get orderFailedTitle {
    return Intl.message(
      'Payment failed',
      name: 'orderFailedTitle',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't process your payment. Your order is saved — you can try again.`
  String get orderFailedSubtitle {
    return Intl.message(
      'We couldn\'t process your payment. Your order is saved — you can try again.',
      name: 'orderFailedSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Error details`
  String get orderFailedErrorLabel {
    return Intl.message(
      'Error details',
      name: 'orderFailedErrorLabel',
      desc: '',
      args: [],
    );
  }

  /// `What you can do`
  String get orderFailedWhatNext {
    return Intl.message(
      'What you can do',
      name: 'orderFailedWhatNext',
      desc: '',
      args: [],
    );
  }

  /// `Try placing the order again`
  String get orderFailedTip1 {
    return Intl.message(
      'Try placing the order again',
      name: 'orderFailedTip1',
      desc: '',
      args: [],
    );
  }

  /// `Check your card details or try a different card`
  String get orderFailedTip2 {
    return Intl.message(
      'Check your card details or try a different card',
      name: 'orderFailedTip2',
      desc: '',
      args: [],
    );
  }

  /// `Contact support if the problem persists`
  String get orderFailedTip3 {
    return Intl.message(
      'Contact support if the problem persists',
      name: 'orderFailedTip3',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get orderFailedRetry {
    return Intl.message(
      'Try again',
      name: 'orderFailedRetry',
      desc: '',
      args: [],
    );
  }

  /// `Payment cancelled`
  String get orderCancelledTitle {
    return Intl.message(
      'Payment cancelled',
      name: 'orderCancelledTitle',
      desc: '',
      args: [],
    );
  }

  /// `No worries — your cart is still saved. You can complete your order whenever you're ready.`
  String get orderCancelledSubtitle {
    return Intl.message(
      'No worries — your cart is still saved. You can complete your order whenever you\'re ready.',
      name: 'orderCancelledSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your items are still in your cart`
  String get orderCancelledTip1 {
    return Intl.message(
      'Your items are still in your cart',
      name: 'orderCancelledTip1',
      desc: '',
      args: [],
    );
  }

  /// `Come back anytime to complete your purchase`
  String get orderCancelledTip2 {
    return Intl.message(
      'Come back anytime to complete your purchase',
      name: 'orderCancelledTip2',
      desc: '',
      args: [],
    );
  }

  /// `Return to checkout`
  String get orderCancelledTryAgain {
    return Intl.message(
      'Return to checkout',
      name: 'orderCancelledTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrdersTitle {
    return Intl.message('My Orders', name: 'myOrdersTitle', desc: '', args: []);
  }

  /// `Ongoing`
  String get myOrdersTabOngoing {
    return Intl.message(
      'Ongoing',
      name: 'myOrdersTabOngoing',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get myOrdersTabCompleted {
    return Intl.message(
      'Completed',
      name: 'myOrdersTabCompleted',
      desc: '',
      args: [],
    );
  }

  /// `No ongoing orders`
  String get myOrdersNoOngoing {
    return Intl.message(
      'No ongoing orders',
      name: 'myOrdersNoOngoing',
      desc: '',
      args: [],
    );
  }

  /// `You have no active orders right now. Start shopping!`
  String get myOrdersNoOngoingSubtitle {
    return Intl.message(
      'You have no active orders right now. Start shopping!',
      name: 'myOrdersNoOngoingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `No completed orders`
  String get myOrdersNoCompleted {
    return Intl.message(
      'No completed orders',
      name: 'myOrdersNoCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Your completed and cancelled orders will appear here.`
  String get myOrdersNoCompletedSubtitle {
    return Intl.message(
      'Your completed and cancelled orders will appear here.',
      name: 'myOrdersNoCompletedSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get myOrdersGenericError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'myOrdersGenericError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load orders`
  String get myOrdersLoadError {
    return Intl.message(
      'Failed to load orders',
      name: 'myOrdersLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get myOrdersTrackOrder {
    return Intl.message(
      'Track Order',
      name: 'myOrdersTrackOrder',
      desc: '',
      args: [],
    );
  }

  /// `{count} {count, plural, one{item} other{items}}`
  String myOrdersItemCount(int count) {
    return Intl.message(
      '$count ${Intl.plural(count, one: 'item', other: 'items')}',
      name: 'myOrdersItemCount',
      desc: '',
      args: [count],
    );
  }

  /// `Newest first`
  String get myOrdersNewestFirst {
    return Intl.message(
      'Newest first',
      name: 'myOrdersNewestFirst',
      desc: '',
      args: [],
    );
  }

  /// `Oldest first`
  String get myOrdersOldestFirst {
    return Intl.message(
      'Oldest first',
      name: 'myOrdersOldestFirst',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get myOrdersStatusPending {
    return Intl.message(
      'Pending',
      name: 'myOrdersStatusPending',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed`
  String get myOrdersStatusConfirmed {
    return Intl.message(
      'Confirmed',
      name: 'myOrdersStatusConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get myOrdersStatusProcessing {
    return Intl.message(
      'Processing',
      name: 'myOrdersStatusProcessing',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get myOrdersStatusShipped {
    return Intl.message(
      'Shipped',
      name: 'myOrdersStatusShipped',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get myOrdersStatusDelivered {
    return Intl.message(
      'Delivered',
      name: 'myOrdersStatusDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get myOrdersStatusCancelled {
    return Intl.message(
      'Cancelled',
      name: 'myOrdersStatusCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Returned`
  String get myOrdersStatusReturned {
    return Intl.message(
      'Returned',
      name: 'myOrdersStatusReturned',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get myOrdersStatusUnknown {
    return Intl.message(
      'Unknown',
      name: 'myOrdersStatusUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetailsTitle {
    return Intl.message(
      'Order Details',
      name: 'orderDetailsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get orderDetailsProducts {
    return Intl.message(
      'Products',
      name: 'orderDetailsProducts',
      desc: '',
      args: [],
    );
  }

  /// `Price Summary`
  String get orderDetailsPriceSummary {
    return Intl.message(
      'Price Summary',
      name: 'orderDetailsPriceSummary',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Information`
  String get orderDetailsShipping {
    return Intl.message(
      'Shipping Information',
      name: 'orderDetailsShipping',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get orderDetailsPayment {
    return Intl.message(
      'Payment',
      name: 'orderDetailsPayment',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get orderDetailsSubtotal {
    return Intl.message(
      'Subtotal',
      name: 'orderDetailsSubtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get orderDetailsShippingCost {
    return Intl.message(
      'Shipping',
      name: 'orderDetailsShippingCost',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get orderDetailsTotal {
    return Intl.message('Total', name: 'orderDetailsTotal', desc: '', args: []);
  }

  /// `Order number copied`
  String get orderDetailsCopied {
    return Intl.message(
      'Order number copied',
      name: 'orderDetailsCopied',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `{count} unread`
  String unreadCount(int count) {
    return Intl.message(
      '$count unread',
      name: 'unreadCount',
      desc: '',
      args: [count],
    );
  }

  /// `{count} selected`
  String selectedCount(int count) {
    return Intl.message(
      '$count selected',
      name: 'selectedCount',
      desc: '',
      args: [count],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Unread`
  String get unread {
    return Intl.message('Unread', name: 'unread', desc: '', args: []);
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Select All`
  String get selectAll {
    return Intl.message('Select All', name: 'selectAll', desc: '', args: []);
  }

  /// `Mark all read`
  String get markAllRead {
    return Intl.message(
      'Mark all read',
      name: 'markAllRead',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get markAsRead {
    return Intl.message('Mark as read', name: 'markAsRead', desc: '', args: []);
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message('Try Again', name: 'tryAgain', desc: '', args: []);
  }

  /// `Long press to select • Swipe left to delete`
  String get selectionHint {
    return Intl.message(
      'Long press to select • Swipe left to delete',
      name: 'selectionHint',
      desc: '',
      args: [],
    );
  }

  /// `Connection Error`
  String get connectionError {
    return Intl.message(
      'Connection Error',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone.`
  String get actionCannotBeUndone {
    return Intl.message(
      'This action cannot be undone.',
      name: 'actionCannotBeUndone',
      desc: '',
      args: [],
    );
  }

  /// `Delete {count} notification{count, plural, one{} other{s}}?`
  String deleteNotificationsConfirm(int count) {
    return Intl.message(
      'Delete $count notification${Intl.plural(count, one: '', other: 's')}?',
      name: 'deleteNotificationsConfirm',
      desc: '',
      args: [count],
    );
  }

  /// `All caught up!`
  String get allCaughtUp {
    return Intl.message(
      'All caught up!',
      name: 'allCaughtUp',
      desc: '',
      args: [],
    );
  }

  /// `No notifications yet`
  String get noNotificationsYet {
    return Intl.message(
      'No notifications yet',
      name: 'noNotificationsYet',
      desc: '',
      args: [],
    );
  }

  /// `You have no unread notifications.\nYou're all caught up!`
  String get noUnreadNotifications {
    return Intl.message(
      'You have no unread notifications.\nYou\'re all caught up!',
      name: 'noUnreadNotifications',
      desc: '',
      args: [],
    );
  }

  /// `When you get notifications,\nthey'll show up here.`
  String get notificationsWillAppearHere {
    return Intl.message(
      'When you get notifications,\nthey\'ll show up here.',
      name: 'notificationsWillAppearHere',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `This Week`
  String get thisWeek {
    return Intl.message('This Week', name: 'thisWeek', desc: '', args: []);
  }

  /// `This Month`
  String get thisMonth {
    return Intl.message('This Month', name: 'thisMonth', desc: '', args: []);
  }

  /// `Earlier`
  String get earlier {
    return Intl.message('Earlier', name: 'earlier', desc: '', args: []);
  }

  /// `Order ID`
  String get orderId {
    return Intl.message('Order ID', name: 'orderId', desc: '', args: []);
  }

  /// `Product ID`
  String get productId {
    return Intl.message('Product ID', name: 'productId', desc: '', args: []);
  }

  /// `Vendor ID`
  String get vendorId {
    return Intl.message('Vendor ID', name: 'vendorId', desc: '', args: []);
  }

  /// `Received`
  String get received {
    return Intl.message('Received', name: 'received', desc: '', args: []);
  }

  /// `Read at`
  String get readAt {
    return Intl.message('Read at', name: 'readAt', desc: '', args: []);
  }

  /// `Review`
  String get notificationTypeReview {
    return Intl.message(
      'Review',
      name: 'notificationTypeReview',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get notificationTypeOrder {
    return Intl.message(
      'Order',
      name: 'notificationTypeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get notificationTypePayment {
    return Intl.message(
      'Payment',
      name: 'notificationTypePayment',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get notificationTypeShipping {
    return Intl.message(
      'Shipping',
      name: 'notificationTypeShipping',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get notificationTypeSystem {
    return Intl.message(
      'System',
      name: 'notificationTypeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get notificationTypePromotion {
    return Intl.message(
      'Promotion',
      name: 'notificationTypePromotion',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get notificationTypeAlert {
    return Intl.message(
      'Alert',
      name: 'notificationTypeAlert',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get notificationTypeMessage {
    return Intl.message(
      'Message',
      name: 'notificationTypeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notificationTypeUnknown {
    return Intl.message(
      'Notification',
      name: 'notificationTypeUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Search for a product...`
  String get searchHint {
    return Intl.message(
      'Search for a product...',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Filter results`
  String get filterTooltip {
    return Intl.message(
      'Filter results',
      name: 'filterTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Recent searches`
  String get recentSearches {
    return Intl.message(
      'Recent searches',
      name: 'recentSearches',
      desc: '',
      args: [],
    );
  }

  /// `Clear all`
  String get clearAll {
    return Intl.message('Clear all', name: 'clearAll', desc: '', args: []);
  }

  /// `Remove`
  String get removeItem {
    return Intl.message('Remove', name: 'removeItem', desc: '', args: []);
  }

  /// `Tap any previous search to run it again`
  String get searchTip {
    return Intl.message(
      'Tap any previous search to run it again',
      name: 'searchTip',
      desc: '',
      args: [],
    );
  }

  /// `Start searching`
  String get startSearch {
    return Intl.message(
      'Start searching',
      name: 'startSearch',
      desc: '',
      args: [],
    );
  }

  /// `Type a word above to search\nfor the products you want`
  String get startSearchSubtitle {
    return Intl.message(
      'Type a word above to search\nfor the products you want',
      name: 'startSearchSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get noResults {
    return Intl.message(
      'No results found',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Try different keywords or\nremove some filters`
  String get noResultsSubtitle {
    return Intl.message(
      'Try different keywords or\nremove some filters',
      name: 'noResultsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Remove filters`
  String get removeFilters {
    return Intl.message(
      'Remove filters',
      name: 'removeFilters',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get errorTitle {
    return Intl.message(
      'An error occurred',
      name: 'errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `{count} results`
  String searchResultsCount(int count) {
    return Intl.message(
      '$count results',
      name: 'searchResultsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Filter results`
  String get filterTitle {
    return Intl.message(
      'Filter results',
      name: 'filterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get filterReset {
    return Intl.message('Reset', name: 'filterReset', desc: '', args: []);
  }

  /// `Category`
  String get filterCategory {
    return Intl.message('Category', name: 'filterCategory', desc: '', args: []);
  }

  /// `Price range`
  String get filterPriceRange {
    return Intl.message(
      'Price range',
      name: 'filterPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get filterPriceFrom {
    return Intl.message('From', name: 'filterPriceFrom', desc: '', args: []);
  }

  /// `To`
  String get filterPriceTo {
    return Intl.message('To', name: 'filterPriceTo', desc: '', args: []);
  }

  /// `EGP`
  String get currency {
    return Intl.message('EGP', name: 'currency', desc: '', args: []);
  }

  /// `Product origin`
  String get filterOrigin {
    return Intl.message(
      'Product origin',
      name: 'filterOrigin',
      desc: '',
      args: [],
    );
  }

  /// `Made in Egypt`
  String get filterEgyptianMade {
    return Intl.message(
      'Made in Egypt',
      name: 'filterEgyptianMade',
      desc: '',
      args: [],
    );
  }

  /// `Imported`
  String get filterImported {
    return Intl.message('Imported', name: 'filterImported', desc: '', args: []);
  }

  /// `Apply filter`
  String get applyFilter {
    return Intl.message(
      'Apply filter',
      name: 'applyFilter',
      desc: '',
      args: [],
    );
  }

  /// `Apply ({count} filters)`
  String applyFilterCount(int count) {
    return Intl.message(
      'Apply ($count filters)',
      name: 'applyFilterCount',
      desc: '',
      args: [count],
    );
  }

  /// `Failed to load categories`
  String get errorLoadingCategories {
    return Intl.message(
      'Failed to load categories',
      name: 'errorLoadingCategories',
      desc: '',
      args: [],
    );
  }

  /// `No categories available`
  String get noCategoriesAvailable {
    return Intl.message(
      'No categories available',
      name: 'noCategoriesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted successfully`
  String get accountDeletedSuccessfully {
    return Intl.message(
      'Account deleted successfully',
      name: 'accountDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get menuMyOrders {
    return Intl.message(
      'My Orders',
      name: 'menuMyOrders',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Address Book`
  String get menuAddressBook {
    return Intl.message(
      'Address Book',
      name: 'menuAddressBook',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Notifications`
  String get menuNotifications {
    return Intl.message(
      'Notifications',
      name: 'menuNotifications',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Change Language`
  String get menuChangeLanguage {
    return Intl.message(
      'Change Language',
      name: 'menuChangeLanguage',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Theme`
  String get menuTheme {
    return Intl.message(
      'Theme',
      name: 'menuTheme',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `FAQs`
  String get menuFaqs {
    return Intl.message(
      'FAQs',
      name: 'menuFaqs',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Help Center`
  String get menuHelpCenter {
    return Intl.message(
      'Help Center',
      name: 'menuHelpCenter',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Delete Account`
  String get menuDeleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'menuDeleteAccount',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Log Out`
  String get menuLogOut {
    return Intl.message(
      'Log Out',
      name: 'menuLogOut',
      desc: 'Account menu item',
      args: [],
    );
  }

  /// `Choose Language`
  String get chooseLanguage {
    return Intl.message(
      'Choose Language',
      name: 'chooseLanguage',
      desc: 'Bottom sheet title',
      args: [],
    );
  }

  /// `English`
  String get languageEnglish {
    return Intl.message(
      'English',
      name: 'languageEnglish',
      desc: 'English option label',
      args: [],
    );
  }

  /// `العربية`
  String get languageArabic {
    return Intl.message(
      'العربية',
      name: 'languageArabic',
      desc: 'Arabic option label',
      args: [],
    );
  }

  /// `Choose Theme`
  String get chooseTheme {
    return Intl.message(
      'Choose Theme',
      name: 'chooseTheme',
      desc: 'Bottom sheet title',
      args: [],
    );
  }

  /// `Light`
  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: 'Light theme option',
      args: [],
    );
  }

  /// `Dark`
  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: 'Dark theme option',
      args: [],
    );
  }

  /// `System Default`
  String get themeSystemDefault {
    return Intl.message(
      'System Default',
      name: 'themeSystemDefault',
      desc: 'System theme option',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccountTitle {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccountTitle',
      desc: 'Dialog title',
      args: [],
    );
  }

  /// `Are you sure you want to permanently delete your account? This action cannot be undone and all your data will be lost.`
  String get deleteAccountMessage {
    return Intl.message(
      'Are you sure you want to permanently delete your account? This action cannot be undone and all your data will be lost.',
      name: 'deleteAccountMessage',
      desc: 'Warning message in delete account dialog',
      args: [],
    );
  }

  /// `Confirm Your Identity`
  String get deleteAccountConfirmPasswordTitle {
    return Intl.message(
      'Confirm Your Identity',
      name: 'deleteAccountConfirmPasswordTitle',
      desc: 'Password confirmation dialog title',
      args: [],
    );
  }

  /// `Enter your password to confirm account deletion.`
  String get deleteAccountConfirmPasswordSubtitle {
    return Intl.message(
      'Enter your password to confirm account deletion.',
      name: 'deleteAccountConfirmPasswordSubtitle',
      desc: 'Password confirmation dialog subtitle',
      args: [],
    );
  }

  /// `Delete`
  String get deleteAccountConfirm {
    return Intl.message(
      'Delete',
      name: 'deleteAccountConfirm',
      desc: 'Confirm delete button',
      args: [],
    );
  }

  /// `Account deletion requested...`
  String get deleteAccountRequested {
    return Intl.message(
      'Account deletion requested...',
      name: 'deleteAccountRequested',
      desc: 'Snackbar after delete triggered',
      args: [],
    );
  }

  /// `Continue`
  String get continueLabel {
    return Intl.message(
      'Continue',
      name: 'continueLabel',
      desc: 'Continue button label',
      args: [],
    );
  }

  /// `Log Out`
  String get logOutTitle {
    return Intl.message(
      'Log Out',
      name: 'logOutTitle',
      desc: 'Logout dialog title',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get logOutMessage {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'logOutMessage',
      desc: 'Logout confirmation message',
      args: [],
    );
  }

  /// `Log Out`
  String get logOutConfirm {
    return Intl.message(
      'Log Out',
      name: 'logOutConfirm',
      desc: 'Logout confirm button',
      args: [],
    );
  }

  /// `Track Order`
  String get trackOrder {
    return Intl.message('Track Order', name: 'trackOrder', desc: '', args: []);
  }

  /// `Refresh`
  String get refresh {
    return Intl.message('Refresh', name: 'refresh', desc: '', args: []);
  }

  /// `Enter order number…`
  String get enterOrderNumber {
    return Intl.message(
      'Enter order number…',
      name: 'enterOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Track`
  String get track {
    return Intl.message('Track', name: 'track', desc: '', args: []);
  }

  /// `Track Your Order`
  String get trackYourOrder {
    return Intl.message(
      'Track Your Order',
      name: 'trackYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Enter an order number above to follow your delivery in real time`
  String get enterOrderNumberToTrack {
    return Intl.message(
      'Enter an order number above to follow your delivery in real time',
      name: 'enterOrderNumberToTrack',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNumber {
    return Intl.message(
      'Order Number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Rider location`
  String get riderLocation {
    return Intl.message(
      'Rider location',
      name: 'riderLocation',
      desc: '',
      args: [],
    );
  }

  /// `Not available yet`
  String get notAvailableYet {
    return Intl.message(
      'Not available yet',
      name: 'notAvailableYet',
      desc: '',
      args: [],
    );
  }

  /// `Order Progress`
  String get orderProgress {
    return Intl.message(
      'Order Progress',
      name: 'orderProgress',
      desc: '',
      args: [],
    );
  }

  /// `Vendor`
  String get vendor {
    return Intl.message('Vendor', name: 'vendor', desc: '', args: []);
  }

  /// `Rider`
  String get rider {
    return Intl.message('Rider', name: 'rider', desc: '', args: []);
  }

  /// `Order number copied`
  String get orderNumberCopied {
    return Intl.message(
      'Order number copied',
      name: 'orderNumberCopied',
      desc: '',
      args: [],
    );
  }

  /// `Copy order number`
  String get copyOrderNumber {
    return Intl.message(
      'Copy order number',
      name: 'copyOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Current Status`
  String get currentStatus {
    return Intl.message(
      'Current Status',
      name: 'currentStatus',
      desc: '',
      args: [],
    );
  }

  /// `Fetching order details…`
  String get fetchingOrderDetails {
    return Intl.message(
      'Fetching order details…',
      name: 'fetchingOrderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get statusPending {
    return Intl.message('Pending', name: 'statusPending', desc: '', args: []);
  }

  /// `Confirmed`
  String get statusConfirmed {
    return Intl.message(
      'Confirmed',
      name: 'statusConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get statusProcessing {
    return Intl.message(
      'Processing',
      name: 'statusProcessing',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get statusShipped {
    return Intl.message('Shipped', name: 'statusShipped', desc: '', args: []);
  }

  /// `Delivered`
  String get statusDelivered {
    return Intl.message(
      'Delivered',
      name: 'statusDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get statusCancelled {
    return Intl.message(
      'Cancelled',
      name: 'statusCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Returned`
  String get statusReturned {
    return Intl.message('Returned', name: 'statusReturned', desc: '', args: []);
  }

  /// `Unknown`
  String get statusUnknown {
    return Intl.message('Unknown', name: 'statusUnknown', desc: '', args: []);
  }

  /// `Your order has been placed and is awaiting confirmation`
  String get statusDescPending {
    return Intl.message(
      'Your order has been placed and is awaiting confirmation',
      name: 'statusDescPending',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been confirmed and will be prepared shortly`
  String get statusDescConfirmed {
    return Intl.message(
      'Your order has been confirmed and will be prepared shortly',
      name: 'statusDescConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `The vendor is preparing your order`
  String get statusDescProcessing {
    return Intl.message(
      'The vendor is preparing your order',
      name: 'statusDescProcessing',
      desc: '',
      args: [],
    );
  }

  /// `Your order is on the way to you`
  String get statusDescShipped {
    return Intl.message(
      'Your order is on the way to you',
      name: 'statusDescShipped',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been delivered successfully`
  String get statusDescDelivered {
    return Intl.message(
      'Your order has been delivered successfully',
      name: 'statusDescDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been cancelled`
  String get statusDescCancelled {
    return Intl.message(
      'Your order has been cancelled',
      name: 'statusDescCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been returned successfully`
  String get statusDescReturned {
    return Intl.message(
      'Your order has been returned successfully',
      name: 'statusDescReturned',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get stepCompleted {
    return Intl.message('Completed', name: 'stepCompleted', desc: '', args: []);
  }

  /// `In Transit`
  String get myOrdersStatusInTransit {
    return Intl.message(
      'In Transit',
      name: 'myOrdersStatusInTransit',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been shipped and is currently in transit`
  String get statusDescInTransit {
    return Intl.message(
      'Your order has been shipped and is currently in transit',
      name: 'statusDescInTransit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
