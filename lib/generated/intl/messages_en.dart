// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(title) => "Remove \"${title}\" from your saved addresses?";

  static String m1(count) => "Apply (${count} filters)";

  static String m2(amount) => "EGP ${amount}";

  static String m3(amount) => "Saving EGP ${amount}";

  static String m4(amount) => "Add EGP ${amount} more for free shipping!";

  static String m5(count) => "Only ${count} left!";

  static String m6(productName) => "Remove \"${productName}\" from your cart?";

  static String m7(amount) => "You save ${amount}";

  static String m8(address) =>
      "Remove \"${address}\"?\nThis action cannot be undone.";

  static String m9(count) =>
      "Delete ${count} notification${Intl.plural(count, one: '', other: 's')}?";

  static String m10(count) =>
      "You have ${count} saved items. Sign in to keep them";

  static String m11(city) => "Made in ${city}";

  static String m12(count) =>
      "${count} ${Intl.plural(count, one: 'item', other: 'items')}";

  static String m13(count) => "Only ${count} items left in stock!";

  static String m14(count) => "Only ${count} left!";

  static String m15(amount) => "+EGP ${amount}";

  static String m16(amount) => "EGP ${amount}";

  static String m17(count) => "(${count} reviews)";

  static String m18(count) => "${count} results";

  static String m19(count) => "${count} selected";

  static String m20(count) => "${count} unread";

  static String m21(amount) => "+${amount} variants";

  static String m22(count) => "${count} views";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "AddressBook": MessageLookupByLibrary.simpleMessage("Address Book"),
    "Categories": MessageLookupByLibrary.simpleMessage("Categories"),
    "Edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "EditProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "account": MessageLookupByLibrary.simpleMessage("Account"),
    "accountDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Account deleted successfully",
    ),
    "actionCannotBeUndone": MessageLookupByLibrary.simpleMessage(
      "This action cannot be undone.",
    ),
    "addAddress": MessageLookupByLibrary.simpleMessage("Add Address"),
    "addCard": MessageLookupByLibrary.simpleMessage("Add card"),
    "addDebitOrCreditCard": MessageLookupByLibrary.simpleMessage(
      "Add Debit or Credit Card",
    ),
    "addFirstAddress": MessageLookupByLibrary.simpleMessage(
      "Add your first delivery address\nto get started.",
    ),
    "addNewAddress": MessageLookupByLibrary.simpleMessage("Add New Address"),
    "addNewCard": MessageLookupByLibrary.simpleMessage("Add New Card"),
    "addToCart": MessageLookupByLibrary.simpleMessage("Add to Cart"),
    "add_to_cart": MessageLookupByLibrary.simpleMessage("Add to Cart"),
    "addedToWishlist": MessageLookupByLibrary.simpleMessage(
      "Added to wishlist",
    ),
    "addressActionDelete": MessageLookupByLibrary.simpleMessage("Delete"),
    "addressActionEdit": MessageLookupByLibrary.simpleMessage("Edit"),
    "addressDefaultBadge": MessageLookupByLibrary.simpleMessage("Default"),
    "addressDeleteDialogConfirm": MessageLookupByLibrary.simpleMessage(
      "Delete",
    ),
    "addressDeleteDialogContent": m0,
    "addressDeleteDialogKeep": MessageLookupByLibrary.simpleMessage("Keep"),
    "addressDeleteDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Delete address?",
    ),
    "addressEmptySubtitle": MessageLookupByLibrary.simpleMessage(
      "Add an address to get started",
    ),
    "addressEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "No saved addresses",
    ),
    "addressGenericError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. Please try again.",
    ),
    "addressLoadError": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t load addresses",
    ),
    "addressNickName": MessageLookupByLibrary.simpleMessage("Address Nickname"),
    "addressPickerAddNew": MessageLookupByLibrary.simpleMessage(
      "Add new address",
    ),
    "addressPickerTitle": MessageLookupByLibrary.simpleMessage("Deliver to"),
    "addressRetry": MessageLookupByLibrary.simpleMessage("Try again"),
    "addressSearchHint": MessageLookupByLibrary.simpleMessage(
      "Search addresses...",
    ),
    "addressSearchNoResults": MessageLookupByLibrary.simpleMessage(
      "No addresses found",
    ),
    "addressSearchNoResultsHint": MessageLookupByLibrary.simpleMessage(
      "Try a different search term",
    ),
    "all": MessageLookupByLibrary.simpleMessage("All"),
    "allCaughtUp": MessageLookupByLibrary.simpleMessage("All caught up!"),
    "alreadyHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "Already have an account? ",
    ),
    "and": MessageLookupByLibrary.simpleMessage(" and "),
    "apply": MessageLookupByLibrary.simpleMessage("Apply"),
    "applyFilter": MessageLookupByLibrary.simpleMessage("Apply filter"),
    "applyFilterCount": m1,
    "backToLogin": MessageLookupByLibrary.simpleMessage("Back to Login"),
    "bestSeller": MessageLookupByLibrary.simpleMessage("Best Seller"),
    "brandStores": MessageLookupByLibrary.simpleMessage("Brand Stores"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "card": MessageLookupByLibrary.simpleMessage("Card"),
    "cardNumber": MessageLookupByLibrary.simpleMessage("Card number"),
    "cart": MessageLookupByLibrary.simpleMessage("Cart"),
    "cartBottomBarEgpAmount": m2,
    "cartBottomBarSaving": m3,
    "cartBottomBarTotal": MessageLookupByLibrary.simpleMessage("Total"),
    "cartCheckoutBlockedLabel": MessageLookupByLibrary.simpleMessage(
      "Checkout unavailable",
    ),
    "cartCheckoutLabel": MessageLookupByLibrary.simpleMessage("Checkout"),
    "cartEmptySubtitle": MessageLookupByLibrary.simpleMessage(
      "add items to your cart to get started.",
    ),
    "cartEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "Your shopping cart looks empty",
    ),
    "cartFreeShippingEarned": MessageLookupByLibrary.simpleMessage(
      "You\'ve unlocked free shipping! 🎉",
    ),
    "cartFreeShippingProgress": m4,
    "cartItemEditTooltip": MessageLookupByLibrary.simpleMessage(
      "Edit variants / options",
    ),
    "cartItemLoadError": MessageLookupByLibrary.simpleMessage(
      "Failed to load product details",
    ),
    "cartItemOnlyXLeft": m5,
    "cartItemOutOfStockMessage": MessageLookupByLibrary.simpleMessage(
      "Out of stock — remove or save for later",
    ),
    "cartItemRemove": MessageLookupByLibrary.simpleMessage("Remove"),
    "cartItemRemoveDialogConfirm": MessageLookupByLibrary.simpleMessage(
      "Remove",
    ),
    "cartItemRemoveDialogContent": m6,
    "cartItemRemoveDialogKeep": MessageLookupByLibrary.simpleMessage("Keep"),
    "cartItemRemoveDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Remove item?",
    ),
    "cartItemYouSave": m7,
    "cartOutOfStockCheckoutBlocked": MessageLookupByLibrary.simpleMessage(
      "Remove unavailable items to checkout",
    ),
    "cartOutOfStockClearAll": MessageLookupByLibrary.simpleMessage("Clear all"),
    "cartSummaryDiscount": MessageLookupByLibrary.simpleMessage("Discount"),
    "cartSummaryOutOfStockWarning": MessageLookupByLibrary.simpleMessage(
      "Some items are out of stock",
    ),
    "cartSummaryShipping": MessageLookupByLibrary.simpleMessage("Shipping fee"),
    "cartSummaryShippingFree": MessageLookupByLibrary.simpleMessage("Free"),
    "cartSummarySubtotal": MessageLookupByLibrary.simpleMessage("Sub-total"),
    "cash": MessageLookupByLibrary.simpleMessage("Cash"),
    "change": MessageLookupByLibrary.simpleMessage("Change"),
    "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
    "chooseLanguage": MessageLookupByLibrary.simpleMessage("Choose Language"),
    "chooseTheme": MessageLookupByLibrary.simpleMessage("Choose Theme"),
    "clearAll": MessageLookupByLibrary.simpleMessage("Clear all"),
    "confirmLocation": MessageLookupByLibrary.simpleMessage("Confirm Location"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm password"),
    "connectionError": MessageLookupByLibrary.simpleMessage("Connection Error"),
    "continueLabel": MessageLookupByLibrary.simpleMessage("Continue"),
    "copyOrderNumber": MessageLookupByLibrary.simpleMessage(
      "Copy order number",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Create account"),
    "createAccountToContinue": MessageLookupByLibrary.simpleMessage(
      "Create an account to continue",
    ),
    "createOrderTitle": MessageLookupByLibrary.simpleMessage("Checkout"),
    "currency": MessageLookupByLibrary.simpleMessage("EGP"),
    "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
    "defaultAddress": MessageLookupByLibrary.simpleMessage("Default"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAccountConfirm": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAccountConfirmPasswordSubtitle":
        MessageLookupByLibrary.simpleMessage(
          "Enter your password to confirm account deletion.",
        ),
    "deleteAccountConfirmPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "Confirm Your Identity",
    ),
    "deleteAccountMessage": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to permanently delete your account? This action cannot be undone and all your data will be lost.",
    ),
    "deleteAccountRequested": MessageLookupByLibrary.simpleMessage(
      "Account deletion requested...",
    ),
    "deleteAccountTitle": MessageLookupByLibrary.simpleMessage(
      "Delete Account",
    ),
    "deleteAddressMessage": m8,
    "deleteAddressTitle": MessageLookupByLibrary.simpleMessage(
      "Delete Address?",
    ),
    "deleteNotificationsConfirm": m9,
    "deliveryAddress": MessageLookupByLibrary.simpleMessage("Delivery Address"),
    "description": MessageLookupByLibrary.simpleMessage("Description"),
    "discountedSubTotal": MessageLookupByLibrary.simpleMessage(
      "Discounted Subtotal",
    ),
    "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account? ",
    ),
    "earlier": MessageLookupByLibrary.simpleMessage("Earlier"),
    "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "egyptian_made": MessageLookupByLibrary.simpleMessage("🇪🇬 Egyptian Made"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailInvalid": MessageLookupByLibrary.simpleMessage("Email is invalid"),
    "emailInvalidDomain": MessageLookupByLibrary.simpleMessage(
      "The domain after @ is invalid",
    ),
    "emailInvalidFormat": MessageLookupByLibrary.simpleMessage(
      "Invalid email format, make sure it contains @",
    ),
    "emailInvalidLocal": MessageLookupByLibrary.simpleMessage(
      "The part before @ contains invalid characters",
    ),
    "emailInvalidTld": MessageLookupByLibrary.simpleMessage(
      "Invalid domain extension (e.g. .com, .net)",
    ),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email is required"),
    "emailTooLong": MessageLookupByLibrary.simpleMessage("Email is too long"),
    "emptyFavoriteBody": MessageLookupByLibrary.simpleMessage(
      "You don\'t have any saved items. Go to home and add some.",
    ),
    "emptyFavoriteTitle": MessageLookupByLibrary.simpleMessage(
      "No Saved Items!",
    ),
    "enterCouponCode": MessageLookupByLibrary.simpleMessage(
      "Enter Coupon code",
    ),
    "enterOrderNumber": MessageLookupByLibrary.simpleMessage(
      "Enter order number…",
    ),
    "enterOrderNumberToTrack": MessageLookupByLibrary.simpleMessage(
      "Enter an order number above to follow your delivery in real time",
    ),
    "enterPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Enter phone number",
    ),
    "enterYourCardNumber": MessageLookupByLibrary.simpleMessage(
      "Enter your card number",
    ),
    "enterYourEmailAndPasswordToLogin": MessageLookupByLibrary.simpleMessage(
      "Enter your email and password to log in",
    ),
    "errorLoadingCategories": MessageLookupByLibrary.simpleMessage(
      "Failed to load categories",
    ),
    "errorTitle": MessageLookupByLibrary.simpleMessage("An error occurred"),
    "error_account_blocked_action": MessageLookupByLibrary.simpleMessage(
      "Contact Support",
    ),
    "error_account_blocked_message": MessageLookupByLibrary.simpleMessage(
      "Your account has been suspended. Please reach out to us.",
    ),
    "error_bad_gateway_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_bad_gateway_message": MessageLookupByLibrary.simpleMessage(
      "We\'re having trouble reaching our servers. Please try again.",
    ),
    "error_bad_request_action": MessageLookupByLibrary.simpleMessage(
      "Review & Retry",
    ),
    "error_bad_request_message": MessageLookupByLibrary.simpleMessage(
      "Something doesn\'t look right. Please review your details.",
    ),
    "error_conflict_action": MessageLookupByLibrary.simpleMessage("Try Again"),
    "error_conflict_message": MessageLookupByLibrary.simpleMessage(
      "This action conflicts with existing data. Please try again.",
    ),
    "error_connection_timeout_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_connection_timeout_message": MessageLookupByLibrary.simpleMessage(
      "This is taking longer than expected. Check your connection.",
    ),
    "error_email_not_verified_action": MessageLookupByLibrary.simpleMessage(
      "Verify Email",
    ),
    "error_email_not_verified_message": MessageLookupByLibrary.simpleMessage(
      "Please verify your email first",
    ),
    "error_forbidden_action": MessageLookupByLibrary.simpleMessage("Go Back"),
    "error_forbidden_message": MessageLookupByLibrary.simpleMessage(
      "You don\'t have access to this. Need help? Contact support.",
    ),
    "error_gateway_timeout_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_gateway_timeout_message": MessageLookupByLibrary.simpleMessage(
      "The server took too long to respond. Please try again.",
    ),
    "error_invalid_credentials_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_invalid_credentials_message": MessageLookupByLibrary.simpleMessage(
      "Hmm, that email or password doesn\'t look right.",
    ),
    "error_no_internet_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_no_internet_message": MessageLookupByLibrary.simpleMessage(
      "You appear to be offline. Check your connection and try again.",
    ),
    "error_not_found_action": MessageLookupByLibrary.simpleMessage("Go Back"),
    "error_not_found_message": MessageLookupByLibrary.simpleMessage(
      "We couldn\'t find what you\'re looking for.",
    ),
    "error_request_cancelled_action": MessageLookupByLibrary.simpleMessage(
      "Dismiss",
    ),
    "error_request_cancelled_message": MessageLookupByLibrary.simpleMessage(
      "The request was cancelled.",
    ),
    "error_server_error_action": MessageLookupByLibrary.simpleMessage(
      "Try Again",
    ),
    "error_server_error_message": MessageLookupByLibrary.simpleMessage(
      "Our servers hit a snag. We\'re on it — please try again shortly.",
    ),
    "error_service_unavailable_action": MessageLookupByLibrary.simpleMessage(
      "Try Again Later",
    ),
    "error_service_unavailable_message": MessageLookupByLibrary.simpleMessage(
      "We\'re down for a bit. Please check back soon.",
    ),
    "error_token_expired_action": MessageLookupByLibrary.simpleMessage(
      "Sign In Again",
    ),
    "error_token_expired_message": MessageLookupByLibrary.simpleMessage(
      "You\'ve been signed out. Please sign in again.",
    ),
    "error_too_many_requests_action": MessageLookupByLibrary.simpleMessage(
      "Try Again Later",
    ),
    "error_too_many_requests_message": MessageLookupByLibrary.simpleMessage(
      "You\'re moving too fast! Please wait a moment and try again.",
    ),
    "error_unauthorized_action": MessageLookupByLibrary.simpleMessage(
      "Sign In",
    ),
    "error_unauthorized_message": MessageLookupByLibrary.simpleMessage(
      "You need to sign in to continue.",
    ),
    "error_unknown_action": MessageLookupByLibrary.simpleMessage("Dismiss"),
    "error_unknown_message": MessageLookupByLibrary.simpleMessage(
      "Something unexpected happened. Please try again.",
    ),
    "error_validation_failed_action": MessageLookupByLibrary.simpleMessage(
      "Fix & Continue",
    ),
    "error_validation_failed_message": MessageLookupByLibrary.simpleMessage(
      "Some fields need your attention before we can continue.",
    ),
    "expiryDate": MessageLookupByLibrary.simpleMessage("Expiry Date"),
    "exploreCategories": MessageLookupByLibrary.simpleMessage(
      "Explore Categories",
    ),
    "exploreHeka": MessageLookupByLibrary.simpleMessage("Explore Heka now"),
    "failedToGetLocation": MessageLookupByLibrary.simpleMessage(
      "Failed to get location. Please try again.",
    ),
    "favourites": MessageLookupByLibrary.simpleMessage("Favourites"),
    "featuredBrands": MessageLookupByLibrary.simpleMessage("Featured Brands"),
    "fetchingAddress": MessageLookupByLibrary.simpleMessage(
      "Fetching address...",
    ),
    "fetchingOrderDetails": MessageLookupByLibrary.simpleMessage(
      "Fetching order details…",
    ),
    "fieldRequired": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Category"),
    "filterEgyptianMade": MessageLookupByLibrary.simpleMessage("Made in Egypt"),
    "filterImported": MessageLookupByLibrary.simpleMessage("Imported"),
    "filterOrigin": MessageLookupByLibrary.simpleMessage("Product origin"),
    "filterPriceFrom": MessageLookupByLibrary.simpleMessage("From"),
    "filterPriceRange": MessageLookupByLibrary.simpleMessage("Price range"),
    "filterPriceTo": MessageLookupByLibrary.simpleMessage("To"),
    "filterReset": MessageLookupByLibrary.simpleMessage("Reset"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Filter results"),
    "filterTooltip": MessageLookupByLibrary.simpleMessage("Filter results"),
    "firstName": MessageLookupByLibrary.simpleMessage("First name"),
    "fitchingAddress": MessageLookupByLibrary.simpleMessage(
      "Fetching address...",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot password?"),
    "freeShipping": MessageLookupByLibrary.simpleMessage("Free Shipping"),
    "getStartedNow": MessageLookupByLibrary.simpleMessage("Get started now"),
    "go_back": MessageLookupByLibrary.simpleMessage("Go back"),
    "goodAfternoon": MessageLookupByLibrary.simpleMessage("Good afternoon"),
    "goodEvening": MessageLookupByLibrary.simpleMessage("Good evening"),
    "goodMorning": MessageLookupByLibrary.simpleMessage("Good morning"),
    "gpsButtonTooltip": MessageLookupByLibrary.simpleMessage(
      "Current location",
    ),
    "guest": MessageLookupByLibrary.simpleMessage("Guest"),
    "guestWishlistSubtitle": m10,
    "guestWishlistTitle": MessageLookupByLibrary.simpleMessage(
      "Sign in to save your wishlist",
    ),
    "hello": MessageLookupByLibrary.simpleMessage("Hello"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "iAgreeTo": MessageLookupByLibrary.simpleMessage("I agree to "),
    "in_stock": MessageLookupByLibrary.simpleMessage("In Stock"),
    "invalidCardNumber": MessageLookupByLibrary.simpleMessage(
      "Invalid card number",
    ),
    "invalidCvv": MessageLookupByLibrary.simpleMessage("Invalid CVV"),
    "invalidExpiry": MessageLookupByLibrary.simpleMessage("Invalid expiry"),
    "itemsYouMayLike": MessageLookupByLibrary.simpleMessage(
      "Items You May Like",
    ),
    "lang": MessageLookupByLibrary.simpleMessage("English"),
    "languageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "languageChangeError": MessageLookupByLibrary.simpleMessage(
      "Failed to change language.",
    ),
    "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "languageLoadError": MessageLookupByLibrary.simpleMessage(
      "Failed to load language.",
    ),
    "languageToggleError": MessageLookupByLibrary.simpleMessage(
      "Failed to switch language.",
    ),
    "lastName": MessageLookupByLibrary.simpleMessage("Last name"),
    "locationDetailAddress": MessageLookupByLibrary.simpleMessage("Address"),
    "locationDetailCoordinates": MessageLookupByLibrary.simpleMessage(
      "Coordinates",
    ),
    "locationPermissionDenied": MessageLookupByLibrary.simpleMessage(
      "Location permission denied. Please allow access to your location.",
    ),
    "locationPermissionDeniedForever": MessageLookupByLibrary.simpleMessage(
      "Location permission is permanently denied. You can enable it from settings.",
    ),
    "logOutConfirm": MessageLookupByLibrary.simpleMessage("Log Out"),
    "logOutMessage": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to log out?",
    ),
    "logOutTitle": MessageLookupByLibrary.simpleMessage("Log Out"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "loginToSave": MessageLookupByLibrary.simpleMessage(
      "Sign in to save wishlist",
    ),
    "loginToYourAccount": MessageLookupByLibrary.simpleMessage(
      "Login to your account",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "made_in": m11,
    "markAllRead": MessageLookupByLibrary.simpleMessage("Mark all read"),
    "markAsRead": MessageLookupByLibrary.simpleMessage("Mark as read"),
    "menuAddressBook": MessageLookupByLibrary.simpleMessage("Address Book"),
    "menuChangeLanguage": MessageLookupByLibrary.simpleMessage(
      "Change Language",
    ),
    "menuDeleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "menuFaqs": MessageLookupByLibrary.simpleMessage("FAQs"),
    "menuHelpCenter": MessageLookupByLibrary.simpleMessage("Help Center"),
    "menuLogOut": MessageLookupByLibrary.simpleMessage("Log Out"),
    "menuMyOrders": MessageLookupByLibrary.simpleMessage("My Orders"),
    "menuNotifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "menuTheme": MessageLookupByLibrary.simpleMessage("Theme"),
    "myOrdersGenericError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. Please try again.",
    ),
    "myOrdersItemCount": m12,
    "myOrdersLeaveReview": MessageLookupByLibrary.simpleMessage(
      "Leave a Review",
    ),
    "myOrdersLoadError": MessageLookupByLibrary.simpleMessage(
      "Failed to load orders",
    ),
    "myOrdersNewestFirst": MessageLookupByLibrary.simpleMessage("Newest first"),
    "myOrdersNoCompleted": MessageLookupByLibrary.simpleMessage(
      "No completed orders",
    ),
    "myOrdersNoCompletedSubtitle": MessageLookupByLibrary.simpleMessage(
      "Your completed and cancelled orders will appear here.",
    ),
    "myOrdersNoOngoing": MessageLookupByLibrary.simpleMessage(
      "No ongoing orders",
    ),
    "myOrdersNoOngoingSubtitle": MessageLookupByLibrary.simpleMessage(
      "You have no active orders right now. Start shopping!",
    ),
    "myOrdersOldestFirst": MessageLookupByLibrary.simpleMessage("Oldest first"),
    "myOrdersRating1": MessageLookupByLibrary.simpleMessage("Poor"),
    "myOrdersRating2": MessageLookupByLibrary.simpleMessage("Fair"),
    "myOrdersRating3": MessageLookupByLibrary.simpleMessage("Good"),
    "myOrdersRating4": MessageLookupByLibrary.simpleMessage("Very Good"),
    "myOrdersRating5": MessageLookupByLibrary.simpleMessage("Excellent!"),
    "myOrdersRatingNone": MessageLookupByLibrary.simpleMessage(
      "Tap a star to rate",
    ),
    "myOrdersRatingRequired": MessageLookupByLibrary.simpleMessage(
      "Please provide a rating",
    ),
    "myOrdersReviewHint": MessageLookupByLibrary.simpleMessage(
      "Share your experience with this order...",
    ),
    "myOrdersReviewSubmit": MessageLookupByLibrary.simpleMessage(
      "Submit Review",
    ),
    "myOrdersReviewSuccess": MessageLookupByLibrary.simpleMessage(
      "Review submitted. Thank you!",
    ),
    "myOrdersReviewTitle": MessageLookupByLibrary.simpleMessage(
      "Rate Your Order",
    ),
    "myOrdersReviewTooShort": MessageLookupByLibrary.simpleMessage(
      "Review must be at least 10 characters long",
    ),
    "myOrdersStatusCancelled": MessageLookupByLibrary.simpleMessage(
      "Cancelled",
    ),
    "myOrdersStatusConfirmed": MessageLookupByLibrary.simpleMessage(
      "Confirmed",
    ),
    "myOrdersStatusDelivered": MessageLookupByLibrary.simpleMessage(
      "Delivered",
    ),
    "myOrdersStatusInTransit": MessageLookupByLibrary.simpleMessage(
      "In Transit",
    ),
    "myOrdersStatusPending": MessageLookupByLibrary.simpleMessage("Pending"),
    "myOrdersStatusProcessing": MessageLookupByLibrary.simpleMessage(
      "Processing",
    ),
    "myOrdersStatusReturned": MessageLookupByLibrary.simpleMessage("Returned"),
    "myOrdersStatusShipped": MessageLookupByLibrary.simpleMessage("Shipped"),
    "myOrdersStatusUnknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "myOrdersTabCompleted": MessageLookupByLibrary.simpleMessage("Completed"),
    "myOrdersTabOngoing": MessageLookupByLibrary.simpleMessage("Ongoing"),
    "myOrdersTitle": MessageLookupByLibrary.simpleMessage("My Orders"),
    "myOrdersTrackOrder": MessageLookupByLibrary.simpleMessage("Track Order"),
    "nameInvalid": MessageLookupByLibrary.simpleMessage(
      "Name contains invalid characters",
    ),
    "nameRequired": MessageLookupByLibrary.simpleMessage("Name is required"),
    "nameTooLong": MessageLookupByLibrary.simpleMessage(
      "Name must be at most 50 characters",
    ),
    "nameTooShort": MessageLookupByLibrary.simpleMessage(
      "Name must be at least 3 characters",
    ),
    "newCard": MessageLookupByLibrary.simpleMessage("New Card"),
    "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "nicknameHint": MessageLookupByLibrary.simpleMessage("e.g. Mom\'s house"),
    "noAddressesYet": MessageLookupByLibrary.simpleMessage("No addresses yet"),
    "noCategoriesAvailable": MessageLookupByLibrary.simpleMessage(
      "No categories available",
    ),
    "noLocationSelected": MessageLookupByLibrary.simpleMessage(
      "No location selected yet",
    ),
    "noNotificationsYet": MessageLookupByLibrary.simpleMessage(
      "No notifications yet",
    ),
    "noResults": MessageLookupByLibrary.simpleMessage("No results found"),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("No results found"),
    "noResultsSubtitle": MessageLookupByLibrary.simpleMessage(
      "Try different keywords or\nremove some filters",
    ),
    "noSubCategories": MessageLookupByLibrary.simpleMessage(
      "No Sub Categories",
    ),
    "noUnreadNotifications": MessageLookupByLibrary.simpleMessage(
      "You have no unread notifications.\nYou\'re all caught up!",
    ),
    "no_reviews_yet": MessageLookupByLibrary.simpleMessage("No reviews yet"),
    "notAvailableYet": MessageLookupByLibrary.simpleMessage(
      "Not available yet",
    ),
    "notificationTypeAlert": MessageLookupByLibrary.simpleMessage("Alert"),
    "notificationTypeMessage": MessageLookupByLibrary.simpleMessage("Message"),
    "notificationTypeOrder": MessageLookupByLibrary.simpleMessage("Order"),
    "notificationTypePayment": MessageLookupByLibrary.simpleMessage("Payment"),
    "notificationTypePromotion": MessageLookupByLibrary.simpleMessage(
      "Promotion",
    ),
    "notificationTypeReview": MessageLookupByLibrary.simpleMessage("Review"),
    "notificationTypeShipping": MessageLookupByLibrary.simpleMessage(
      "Shipping",
    ),
    "notificationTypeSystem": MessageLookupByLibrary.simpleMessage("System"),
    "notificationTypeUnknown": MessageLookupByLibrary.simpleMessage(
      "Notification",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "notificationsWillAppearHere": MessageLookupByLibrary.simpleMessage(
      "When you get notifications,\nthey\'ll show up here.",
    ),
    "off": MessageLookupByLibrary.simpleMessage("Off"),
    "onboardingBody": MessageLookupByLibrary.simpleMessage(
      "Connect directly with local artisans and trusted vendors. From handcrafted treasures to modern Egyptian design all in one trusted marketplace.",
    ),
    "onboardingTitle": MessageLookupByLibrary.simpleMessage("Welcome to Heka"),
    "only_x_left_in_stock": m13,
    "only_x_left_label": m14,
    "openSettings": MessageLookupByLibrary.simpleMessage("Open Settings"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("Or login with"),
    "orRegisterWith": MessageLookupByLibrary.simpleMessage("Or register with"),
    "orderAddressAddNew": MessageLookupByLibrary.simpleMessage(
      "Add a delivery address",
    ),
    "orderAddressChange": MessageLookupByLibrary.simpleMessage("Change"),
    "orderAddressLoadError": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t load your addresses",
    ),
    "orderCancelledSubtitle": MessageLookupByLibrary.simpleMessage(
      "No worries — your cart is still saved. You can complete your order whenever you\'re ready.",
    ),
    "orderCancelledTip1": MessageLookupByLibrary.simpleMessage(
      "Your items are still in your cart",
    ),
    "orderCancelledTip2": MessageLookupByLibrary.simpleMessage(
      "Come back anytime to complete your purchase",
    ),
    "orderCancelledTitle": MessageLookupByLibrary.simpleMessage(
      "Payment cancelled",
    ),
    "orderCancelledTryAgain": MessageLookupByLibrary.simpleMessage(
      "Return to checkout",
    ),
    "orderConfirmCash": MessageLookupByLibrary.simpleMessage("Confirm order"),
    "orderDetailsCopied": MessageLookupByLibrary.simpleMessage(
      "Order number copied",
    ),
    "orderDetailsPayment": MessageLookupByLibrary.simpleMessage("Payment"),
    "orderDetailsPriceSummary": MessageLookupByLibrary.simpleMessage(
      "Price Summary",
    ),
    "orderDetailsProducts": MessageLookupByLibrary.simpleMessage("Products"),
    "orderDetailsShipping": MessageLookupByLibrary.simpleMessage(
      "Shipping Information",
    ),
    "orderDetailsShippingCost": MessageLookupByLibrary.simpleMessage(
      "Shipping",
    ),
    "orderDetailsSubtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
    "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Order Details"),
    "orderDetailsTotal": MessageLookupByLibrary.simpleMessage("Total"),
    "orderFailedErrorLabel": MessageLookupByLibrary.simpleMessage(
      "Error details",
    ),
    "orderFailedRetry": MessageLookupByLibrary.simpleMessage("Try again"),
    "orderFailedSubtitle": MessageLookupByLibrary.simpleMessage(
      "We couldn\'t process your payment. Your order is saved — you can try again.",
    ),
    "orderFailedTip1": MessageLookupByLibrary.simpleMessage(
      "Try placing the order again",
    ),
    "orderFailedTip2": MessageLookupByLibrary.simpleMessage(
      "Check your card details or try a different card",
    ),
    "orderFailedTip3": MessageLookupByLibrary.simpleMessage(
      "Contact support if the problem persists",
    ),
    "orderFailedTitle": MessageLookupByLibrary.simpleMessage("Payment failed"),
    "orderFailedWhatNext": MessageLookupByLibrary.simpleMessage(
      "What you can do",
    ),
    "orderFieldFirstName": MessageLookupByLibrary.simpleMessage("First name"),
    "orderFieldLastName": MessageLookupByLibrary.simpleMessage("Last name"),
    "orderFieldNotesHint": MessageLookupByLibrary.simpleMessage(
      "Any special instructions...",
    ),
    "orderFieldPhone": MessageLookupByLibrary.simpleMessage("Phone number"),
    "orderFieldPhoneInvalid": MessageLookupByLibrary.simpleMessage(
      "Enter a valid phone number",
    ),
    "orderFieldRequired": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "orderGenericError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. Please try again.",
    ),
    "orderId": MessageLookupByLibrary.simpleMessage("Order ID"),
    "orderNoAddressSelected": MessageLookupByLibrary.simpleMessage(
      "Please select a delivery address",
    ),
    "orderNumber": MessageLookupByLibrary.simpleMessage("Order Number"),
    "orderNumberCopied": MessageLookupByLibrary.simpleMessage(
      "Order number copied",
    ),
    "orderOptional": MessageLookupByLibrary.simpleMessage("optional"),
    "orderPaymentCash": MessageLookupByLibrary.simpleMessage(
      "Cash on delivery",
    ),
    "orderPaymentCashSubtitle": MessageLookupByLibrary.simpleMessage(
      "Pay when your order arrives",
    ),
    "orderPaymentOnline": MessageLookupByLibrary.simpleMessage(
      "Online payment",
    ),
    "orderPaymentOnlineSubtitle": MessageLookupByLibrary.simpleMessage(
      "Visa, Mastercard via Paymob",
    ),
    "orderPlacingOrder": MessageLookupByLibrary.simpleMessage(
      "Placing your order...",
    ),
    "orderProceedToPayment": MessageLookupByLibrary.simpleMessage(
      "Proceed to payment",
    ),
    "orderProgress": MessageLookupByLibrary.simpleMessage("Order Progress"),
    "orderSectionContact": MessageLookupByLibrary.simpleMessage(
      "Contact details",
    ),
    "orderSectionDeliveryAddress": MessageLookupByLibrary.simpleMessage(
      "Delivery address",
    ),
    "orderSectionNotes": MessageLookupByLibrary.simpleMessage("Order notes"),
    "orderSectionPayment": MessageLookupByLibrary.simpleMessage(
      "Payment method",
    ),
    "orderSuccessBackToHome": MessageLookupByLibrary.simpleMessage(
      "Back to home",
    ),
    "orderSuccessOrderNumber": MessageLookupByLibrary.simpleMessage(
      "Order number",
    ),
    "orderSuccessPaymentMethod": MessageLookupByLibrary.simpleMessage(
      "Payment",
    ),
    "orderSuccessStatus": MessageLookupByLibrary.simpleMessage("Status"),
    "orderSuccessSubtitleCod": MessageLookupByLibrary.simpleMessage(
      "Your order is confirmed. We\'ll contact you before delivery.",
    ),
    "orderSuccessSubtitleOnline": MessageLookupByLibrary.simpleMessage(
      "Payment received. Your order is on its way!",
    ),
    "orderSuccessTitle": MessageLookupByLibrary.simpleMessage("Order placed!"),
    "orderSuccessTotal": MessageLookupByLibrary.simpleMessage("Total"),
    "orderSuccessTrackOrder": MessageLookupByLibrary.simpleMessage(
      "Track my order",
    ),
    "orderSummary": MessageLookupByLibrary.simpleMessage("Order Summary"),
    "other": MessageLookupByLibrary.simpleMessage("Other"),
    "otpInvalid": MessageLookupByLibrary.simpleMessage(
      "Verification code must contain numbers only",
    ),
    "otpRequired": MessageLookupByLibrary.simpleMessage(
      "Verification code is required",
    ),
    "otpResentSuccess": MessageLookupByLibrary.simpleMessage(
      "Code resent successfully",
    ),
    "otpTooShort": MessageLookupByLibrary.simpleMessage(
      "Verification code is incomplete",
    ),
    "out_of_stock": MessageLookupByLibrary.simpleMessage("Out of Stock"),
    "out_of_stock_label": MessageLookupByLibrary.simpleMessage("Out of Stock"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "passwordNoLowercase": MessageLookupByLibrary.simpleMessage(
      "Password must contain a lowercase letter",
    ),
    "passwordNoNumber": MessageLookupByLibrary.simpleMessage(
      "Password must contain a number",
    ),
    "passwordNoSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Password must contain a special character",
    ),
    "passwordNoUppercase": MessageLookupByLibrary.simpleMessage(
      "Password must contain an uppercase letter",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Password is required",
    ),
    "passwordTooLong": MessageLookupByLibrary.simpleMessage(
      "Password must be at most 32 characters",
    ),
    "passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 8 characters",
    ),
    "passwordTooWeak": MessageLookupByLibrary.simpleMessage(
      "Password is too weak, avoid repeating characters",
    ),
    "paymentCancelDialogConfirm": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "paymentCancelDialogContent": MessageLookupByLibrary.simpleMessage(
      "Your order has been placed. If you cancel now you can complete payment later.",
    ),
    "paymentCancelDialogContinue": MessageLookupByLibrary.simpleMessage(
      "Continue paying",
    ),
    "paymentCancelDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel payment?",
    ),
    "paymentMethod": MessageLookupByLibrary.simpleMessage("Payment Method"),
    "paymentWebViewConnecting": MessageLookupByLibrary.simpleMessage(
      "Connecting to payment...",
    ),
    "paymentWebViewLoadError": MessageLookupByLibrary.simpleMessage(
      "Failed to load payment page",
    ),
    "paymentWebViewLoadErrorHint": MessageLookupByLibrary.simpleMessage(
      "Check your connection and try again",
    ),
    "paymentWebViewRetry": MessageLookupByLibrary.simpleMessage("Retry"),
    "paymentWebViewSecure": MessageLookupByLibrary.simpleMessage(
      "Secure connection established",
    ),
    "paymentWebViewSecureNote": MessageLookupByLibrary.simpleMessage(
      "Your payment is encrypted and secure",
    ),
    "paymentWebViewTitle": MessageLookupByLibrary.simpleMessage(
      "Secure payment",
    ),
    "permissionRequired": MessageLookupByLibrary.simpleMessage(
      "Permission Required",
    ),
    "phoneInvalid": MessageLookupByLibrary.simpleMessage(
      "Phone number is invalid",
    ),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
    "phoneRequired": MessageLookupByLibrary.simpleMessage(
      "Phone number is required",
    ),
    "placeOrder": MessageLookupByLibrary.simpleMessage("Place order"),
    "previouslyViewedItem": MessageLookupByLibrary.simpleMessage(
      "Items you previously viewed",
    ),
    "price_adjustment_egp": m15,
    "price_egp": m16,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "productId": MessageLookupByLibrary.simpleMessage("Product ID"),
    "products": MessageLookupByLibrary.simpleMessage("Products"),
    "readAt": MessageLookupByLibrary.simpleMessage("Read at"),
    "received": MessageLookupByLibrary.simpleMessage("Received"),
    "recentSearches": MessageLookupByLibrary.simpleMessage("Recent searches"),
    "recommendedForYou": MessageLookupByLibrary.simpleMessage(
      "Recommended for you",
    ),
    "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
    "removeFilters": MessageLookupByLibrary.simpleMessage("Remove filters"),
    "removeItem": MessageLookupByLibrary.simpleMessage("Remove"),
    "removedFromWishlist": MessageLookupByLibrary.simpleMessage(
      "Removed from wishlist",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Resend Code"),
    "resetPasswordNewPasswordBody": MessageLookupByLibrary.simpleMessage(
      "Enter your new password below to secure your account.",
    ),
    "resetPasswordNewPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "Set a New Password",
    ),
    "resetPasswordOtpBody": MessageLookupByLibrary.simpleMessage(
      "Enter the code we sent to your email to reset your password.",
    ),
    "resetPasswordOtpTitle": MessageLookupByLibrary.simpleMessage(
      "Almost there!",
    ),
    "resetPasswordRequestBody": MessageLookupByLibrary.simpleMessage(
      "Enter your email and we\'ll guide you through the reset process.",
    ),
    "resetPasswordRequestTitle": MessageLookupByLibrary.simpleMessage(
      "Let\'s reset your password",
    ),
    "resetPasswordSuccess": MessageLookupByLibrary.simpleMessage(
      "Password reset successfully",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
    "reviews_count": m17,
    "rider": MessageLookupByLibrary.simpleMessage("Rider"),
    "riderLocation": MessageLookupByLibrary.simpleMessage("Rider location"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "savedCards": MessageLookupByLibrary.simpleMessage("Saved Cards"),
    "searchAddressHint": MessageLookupByLibrary.simpleMessage(
      "Search by name, street, city…",
    ),
    "searchForLocation": MessageLookupByLibrary.simpleMessage(
      "Search for a place",
    ),
    "searchHint": MessageLookupByLibrary.simpleMessage(
      "Search for a product...",
    ),
    "searchResultsCount": m18,
    "searchTip": MessageLookupByLibrary.simpleMessage(
      "Tap any previous search to run it again",
    ),
    "securityCode": MessageLookupByLibrary.simpleMessage("Security Code"),
    "see_all": MessageLookupByLibrary.simpleMessage("See all"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "selectAll": MessageLookupByLibrary.simpleMessage("Select All"),
    "selectLocationSubtitle": MessageLookupByLibrary.simpleMessage(
      "Search or tap anywhere on the map",
    ),
    "selectLocationTitle": MessageLookupByLibrary.simpleMessage(
      "Your Location",
    ),
    "select_options": MessageLookupByLibrary.simpleMessage("Select Options"),
    "selectedCount": m19,
    "selectionHint": MessageLookupByLibrary.simpleMessage(
      "Long press to select • Swipe left to delete",
    ),
    "setAsDefault": MessageLookupByLibrary.simpleMessage("Set as Default"),
    "setAsDefaultAddress": MessageLookupByLibrary.simpleMessage(
      "Make this as a default address",
    ),
    "shippingFee": MessageLookupByLibrary.simpleMessage("Shipping fee"),
    "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Sign in with Google",
    ),
    "signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "signupWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Sign up with Google",
    ),
    "similar_products": MessageLookupByLibrary.simpleMessage(
      "Similar Products",
    ),
    "skipForNow": MessageLookupByLibrary.simpleMessage("Skip for now"),
    "sold_by": MessageLookupByLibrary.simpleMessage("Sold by"),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "startSearch": MessageLookupByLibrary.simpleMessage("Start searching"),
    "startSearchSubtitle": MessageLookupByLibrary.simpleMessage(
      "Type a word above to search\nfor the products you want",
    ),
    "startShopping": MessageLookupByLibrary.simpleMessage("Start Shopping"),
    "statusCancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
    "statusConfirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
    "statusDelivered": MessageLookupByLibrary.simpleMessage("Delivered"),
    "statusDescCancelled": MessageLookupByLibrary.simpleMessage(
      "Your order has been cancelled",
    ),
    "statusDescConfirmed": MessageLookupByLibrary.simpleMessage(
      "Your order has been confirmed and will be prepared shortly",
    ),
    "statusDescDelivered": MessageLookupByLibrary.simpleMessage(
      "Your order has been delivered successfully",
    ),
    "statusDescInTransit": MessageLookupByLibrary.simpleMessage(
      "Your order has been shipped and is currently in transit",
    ),
    "statusDescPending": MessageLookupByLibrary.simpleMessage(
      "Your order has been placed and is awaiting confirmation",
    ),
    "statusDescProcessing": MessageLookupByLibrary.simpleMessage(
      "The vendor is preparing your order",
    ),
    "statusDescReturned": MessageLookupByLibrary.simpleMessage(
      "Your order has been returned successfully",
    ),
    "statusDescShipped": MessageLookupByLibrary.simpleMessage(
      "Your order is on the way to you",
    ),
    "statusPending": MessageLookupByLibrary.simpleMessage("Pending"),
    "statusProcessing": MessageLookupByLibrary.simpleMessage("Processing"),
    "statusReturned": MessageLookupByLibrary.simpleMessage("Returned"),
    "statusShipped": MessageLookupByLibrary.simpleMessage("Shipped"),
    "statusUnknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "stepCompleted": MessageLookupByLibrary.simpleMessage("Completed"),
    "submit": MessageLookupByLibrary.simpleMessage("Submit"),
    "subtotal": MessageLookupByLibrary.simpleMessage("Sub-total"),
    "termsOfUse": MessageLookupByLibrary.simpleMessage("Terms of use"),
    "themeChangeError": MessageLookupByLibrary.simpleMessage(
      "Failed to change theme.",
    ),
    "themeDark": MessageLookupByLibrary.simpleMessage("Dark"),
    "themeLight": MessageLookupByLibrary.simpleMessage("Light"),
    "themeLoadError": MessageLookupByLibrary.simpleMessage(
      "Failed to load theme.",
    ),
    "themeSystemDefault": MessageLookupByLibrary.simpleMessage(
      "System Default",
    ),
    "themeToggleError": MessageLookupByLibrary.simpleMessage(
      "Failed to switch theme.",
    ),
    "thisMonth": MessageLookupByLibrary.simpleMessage("This Month"),
    "thisWeek": MessageLookupByLibrary.simpleMessage("This Week"),
    "today": MessageLookupByLibrary.simpleMessage("Today"),
    "total": MessageLookupByLibrary.simpleMessage("Total"),
    "track": MessageLookupByLibrary.simpleMessage("Track"),
    "trackOrder": MessageLookupByLibrary.simpleMessage("Track Order"),
    "trackYourOrder": MessageLookupByLibrary.simpleMessage("Track Your Order"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
    "tryDifferentSearch": MessageLookupByLibrary.simpleMessage(
      "Try a different name, street or city.",
    ),
    "unread": MessageLookupByLibrary.simpleMessage("Unread"),
    "unreadCount": m20,
    "variant_price_adjustment": m21,
    "vat": MessageLookupByLibrary.simpleMessage("VAT (%)"),
    "vendor": MessageLookupByLibrary.simpleMessage("Vendor"),
    "vendorId": MessageLookupByLibrary.simpleMessage("Vendor ID"),
    "verify": MessageLookupByLibrary.simpleMessage("Verify"),
    "verifyEmailOtpBody": MessageLookupByLibrary.simpleMessage(
      "Enter the code we sent to your email",
    ),
    "verifyEmailOtpTitle": MessageLookupByLibrary.simpleMessage(
      "Verify Your Email",
    ),
    "viewAll": MessageLookupByLibrary.simpleMessage("View All"),
    "views_count": m22,
    "work": MessageLookupByLibrary.simpleMessage("Work"),
    "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
  };
}
