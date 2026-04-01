class ApiConstants {
  static const String baseUrl = 'https://heka.runasp.net';

  static const String login = '/api/Account/login';
  static const String refreshToken = '/api/Account/refresh-token';

  static const String forgotPassword = '/api/Account/forgot-password';
  static const String verifyResetOtp = '/api/Account/verify-reset-code';
  static const String resendOtp = '/api/Account/resend-verification-email';
  static const String resetPassword = '/api/Account/reset-password';

  static const String register = '/api/Account/register';
  static const String verifyEmailOtp = '/api/Account/verify-email-otp';

  static const String userProfile = '/api/Account/profile';
  static const String editProfile = '/api/Account/update-profile';
  static const String updateProfilePicture =
      '/api/Account/upload-profile-picture';
  static const String deleteProfilePicture =
      '/api/Account/delete-profile-picture';

  static const String address = '/api/Address';
  static String addressById(int id) => '/api/Address/$id';
  static String addressDefault(int id) => '/api/Address/$id/default';

  static const String banners = '/api/Products';
  static const String categories = '/api/Categories';
  static const String recommendedProducts = '/api/Products';
  static const String featuredProducts = '/api/Products';
  static const String brands = '/api/Products';

  static const String wishlist = '/api/Wishlist';
  static String wishlistItem(int productId) => '/api/Wishlist/$productId';

  static const String cart = '/api/Cart';
  static const String cartItems = '/api/Cart/items';
  static const String cartCount = '/api/Cart/count';
  static String cartItem(int id) => '/api/Cart/items/$id';
  static String updateCartItem(int id) => '/api/Cart/items/$id';
  static const String productsYouMayLike = '/api/Products';

  static String productById(int id) => '/api/Products/$id';
  static const String search = '/api/Products/search';
}
