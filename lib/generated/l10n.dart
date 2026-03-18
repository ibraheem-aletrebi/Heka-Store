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

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 6 characters',
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

  /// `Items You May Like`
  String get itemsYouMayLike {
    return Intl.message(
      'Items You May Like',
      name: 'itemsYouMayLike',
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
