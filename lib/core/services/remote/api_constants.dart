class ApiConstants {
  static const String baseUrl = 'https://heka.runasp.net';

  static const String login = '/api/Account/login';
  static const String refreshToken ='/api/Account/refresh-token';

  static const String forgotPassword = '/api/Account/forgot-password';
  static const String verifyResetOtp = '/api/Account/verify-reset-code';
  static const String resendOtp = '/api/Account/resend-verification-email';
  static const String resetPassword = '/api/Account/reset-password';

  static const String register='/api/Account/register';
  static const String verifyEmailOtp='/api/Account/verify-email-otp';

  static const String address = '/api/Address';
  static String addressById(int id) => '/api/Address/$id';
  static String addressDefault(int id) => '/api/Address/$id/default';


}