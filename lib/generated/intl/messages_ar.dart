// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(title) => "هل تريد إزالة \"${title}\" من عناوينك المحفوظة؟";

  static String m1(count) => "تطبيق (${count} فلاتر)";

  static String m2(amount) => "ج.م ${amount}";

  static String m3(amount) => "توفير ج.م ${amount}";

  static String m4(amount) => "أضف ج.م ${amount} للحصول على شحن مجاني!";

  static String m5(count) => "لم يتبق سوى ${count}!";

  static String m6(productName) => "هل تريد إزالة \"${productName}\" من سلتك؟";

  static String m7(amount) => "توفير ${amount}";

  static String m8(address) =>
      "هل تريد حذف \"${address}\"؟\nلا يمكن التراجع عن هذا الإجراء.";

  static String m9(count) =>
      "هل تريد حذف ${count} ${Intl.plural(count, one: 'إشعار', two: 'إشعارين', few: 'إشعارات', other: 'إشعار')}؟";

  static String m10(count) =>
      "لديك ${count} عنصر محفوظ. سجّل دخولك للاحتفاظ بها";

  static String m11(city) => "صنع في ${city}";

  static String m12(count) =>
      "${count} ${Intl.plural(count, one: 'منتج', two: 'منتجان', few: 'منتجات', other: 'منتج')}";

  static String m13(count) => "تبقى ${count} قطع فقط في المخزون!";

  static String m14(count) => "تبقى ${count} فقط!";

  static String m15(amount) => "${amount} ج.م";

  static String m16(amount) => "+ج.م ${amount}";

  static String m17(amount) => "ج.م ${amount}";

  static String m18(count) => "${count} تقييم";

  static String m19(count) => "${count} نتيجة";

  static String m20(count) => "تم تحديد ${count}";

  static String m21(count) => "${count} غير مقروء";

  static String m22(amount) => "+${amount} خيارات";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "AddressBook": MessageLookupByLibrary.simpleMessage("دفتر العناوين"),
    "Categories": MessageLookupByLibrary.simpleMessage("الفئات"),
    "Edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "EditProfile": MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
    "account": MessageLookupByLibrary.simpleMessage("الحساب"),
    "accountDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "تم حذف الحساب بنجاح",
    ),
    "actionCannotBeUndone": MessageLookupByLibrary.simpleMessage(
      "لا يمكن التراجع عن هذا الإجراء.",
    ),
    "addAddress": MessageLookupByLibrary.simpleMessage("إضافة عنوان"),
    "addCard": MessageLookupByLibrary.simpleMessage("إضافة بطاقة"),
    "addDebitOrCreditCard": MessageLookupByLibrary.simpleMessage(
      "إضافة بطاقة خصم أو ائتمان",
    ),
    "addFirstAddress": MessageLookupByLibrary.simpleMessage(
      "أضف عنوان التوصيل الأول\nللبدء.",
    ),
    "addNewAddress": MessageLookupByLibrary.simpleMessage("إضافة عنوان جديد"),
    "addNewCard": MessageLookupByLibrary.simpleMessage("إضافة بطاقة جديدة"),
    "addToCart": MessageLookupByLibrary.simpleMessage("أضف إلى السلة"),
    "add_to_cart": MessageLookupByLibrary.simpleMessage("أضف إلى السلة"),
    "addedToWishlist": MessageLookupByLibrary.simpleMessage(
      "تمت الإضافة إلى المفضلة",
    ),
    "addressActionDelete": MessageLookupByLibrary.simpleMessage("حذف"),
    "addressActionEdit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "addressDefaultBadge": MessageLookupByLibrary.simpleMessage("افتراضي"),
    "addressDeleteDialogConfirm": MessageLookupByLibrary.simpleMessage("حذف"),
    "addressDeleteDialogContent": m0,
    "addressDeleteDialogKeep": MessageLookupByLibrary.simpleMessage("احتفظ به"),
    "addressDeleteDialogTitle": MessageLookupByLibrary.simpleMessage(
      "حذف العنوان؟",
    ),
    "addressEmptySubtitle": MessageLookupByLibrary.simpleMessage(
      "أضف عنوانًا للبدء",
    ),
    "addressEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "لا توجد عناوين محفوظة",
    ),
    "addressGenericError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مجددًا.",
    ),
    "addressLoadError": MessageLookupByLibrary.simpleMessage(
      "تعذّر تحميل العناوين",
    ),
    "addressNickName": MessageLookupByLibrary.simpleMessage(
      "اسم مختصر للعنوان",
    ),
    "addressPickerAddNew": MessageLookupByLibrary.simpleMessage(
      "إضافة عنوان جديد",
    ),
    "addressPickerTitle": MessageLookupByLibrary.simpleMessage("التوصيل إلى"),
    "addressRetry": MessageLookupByLibrary.simpleMessage("حاول مجددًا"),
    "addressSearchHint": MessageLookupByLibrary.simpleMessage(
      "ابحث في العناوين...",
    ),
    "addressSearchNoResults": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على عناوين",
    ),
    "addressSearchNoResultsHint": MessageLookupByLibrary.simpleMessage(
      "جرب مصطلح بحث مختلف",
    ),
    "all": MessageLookupByLibrary.simpleMessage("الكل"),
    "allCaughtUp": MessageLookupByLibrary.simpleMessage(
      "أنت على اطلاع بكل شيء!",
    ),
    "alreadyHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "لديك حساب بالفعل؟ ",
    ),
    "and": MessageLookupByLibrary.simpleMessage(" و"),
    "apply": MessageLookupByLibrary.simpleMessage("تطبيق"),
    "applyFilter": MessageLookupByLibrary.simpleMessage("تطبيق الفلتر"),
    "applyFilterCount": m1,
    "backToLogin": MessageLookupByLibrary.simpleMessage(
      "العودة إلى تسجيل الدخول",
    ),
    "bestSeller": MessageLookupByLibrary.simpleMessage("الأكثر مبيعًا"),
    "brandStores": MessageLookupByLibrary.simpleMessage(
      "متاجر العلامات التجارية",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "card": MessageLookupByLibrary.simpleMessage("بطاقة"),
    "cardNumber": MessageLookupByLibrary.simpleMessage("رقم البطاقة"),
    "cart": MessageLookupByLibrary.simpleMessage("السلة"),
    "cartBottomBarEgpAmount": m2,
    "cartBottomBarSaving": m3,
    "cartBottomBarTotal": MessageLookupByLibrary.simpleMessage("الإجمالي"),
    "cartCheckoutBlockedLabel": MessageLookupByLibrary.simpleMessage(
      "إتمام الشراء غير متاح",
    ),
    "cartCheckoutLabel": MessageLookupByLibrary.simpleMessage("إتمام الشراء"),
    "cartEmptySubtitle": MessageLookupByLibrary.simpleMessage(
      "أضف منتجات إلى سلتك للبدء.",
    ),
    "cartEmptyTitle": MessageLookupByLibrary.simpleMessage("سلة التسوق فارغة"),
    "cartFreeShippingEarned": MessageLookupByLibrary.simpleMessage(
      "لقد حصلت على شحن مجاني! 🎉",
    ),
    "cartFreeShippingProgress": m4,
    "cartItemEditTooltip": MessageLookupByLibrary.simpleMessage(
      "تعديل المتغيرات / الخيارات",
    ),
    "cartItemLoadError": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل تفاصيل المنتج",
    ),
    "cartItemOnlyXLeft": m5,
    "cartItemOutOfStockMessage": MessageLookupByLibrary.simpleMessage(
      "نفد المخزون — احذفه أو احفظه لوقت لاحق",
    ),
    "cartItemRemove": MessageLookupByLibrary.simpleMessage("إزالة"),
    "cartItemRemoveDialogConfirm": MessageLookupByLibrary.simpleMessage(
      "إزالة",
    ),
    "cartItemRemoveDialogContent": m6,
    "cartItemRemoveDialogKeep": MessageLookupByLibrary.simpleMessage(
      "احتفظ به",
    ),
    "cartItemRemoveDialogTitle": MessageLookupByLibrary.simpleMessage(
      "إزالة المنتج؟",
    ),
    "cartItemYouSave": m7,
    "cartOutOfStockCheckoutBlocked": MessageLookupByLibrary.simpleMessage(
      "احذف المنتجات غير المتاحة لإتمام الطلب",
    ),
    "cartOutOfStockClearAll": MessageLookupByLibrary.simpleMessage("حذف الكل"),
    "cartSummaryDiscount": MessageLookupByLibrary.simpleMessage("الخصم"),
    "cartSummaryOutOfStockWarning": MessageLookupByLibrary.simpleMessage(
      "بعض المنتجات نفد مخزونها",
    ),
    "cartSummaryShipping": MessageLookupByLibrary.simpleMessage("رسوم الشحن"),
    "cartSummaryShippingFree": MessageLookupByLibrary.simpleMessage("مجاني"),
    "cartSummarySubtotal": MessageLookupByLibrary.simpleMessage(
      "المجموع الجزئي",
    ),
    "cash": MessageLookupByLibrary.simpleMessage("نقداً"),
    "change": MessageLookupByLibrary.simpleMessage("تغيير"),
    "checkout": MessageLookupByLibrary.simpleMessage("إتمام الشراء"),
    "chooseLanguage": MessageLookupByLibrary.simpleMessage("اختر اللغة"),
    "chooseTheme": MessageLookupByLibrary.simpleMessage("اختر المظهر"),
    "clearAll": MessageLookupByLibrary.simpleMessage("مسح الكل"),
    "confirmLocation": MessageLookupByLibrary.simpleMessage("تأكيد الموقع"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "connectionError": MessageLookupByLibrary.simpleMessage("خطأ في الاتصال"),
    "continueLabel": MessageLookupByLibrary.simpleMessage("متابعة"),
    "copyOrderNumber": MessageLookupByLibrary.simpleMessage("نسخ رقم الطلب"),
    "createAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "createAccountToContinue": MessageLookupByLibrary.simpleMessage(
      "أنشئ حسابًا للمتابعة",
    ),
    "createOrderTitle": MessageLookupByLibrary.simpleMessage("إتمام الشراء"),
    "currency": MessageLookupByLibrary.simpleMessage("ج.م"),
    "currentStatus": MessageLookupByLibrary.simpleMessage("الحالة الحالية"),
    "defaultAddress": MessageLookupByLibrary.simpleMessage("افتراضي"),
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "deleteAccountConfirm": MessageLookupByLibrary.simpleMessage("حذف"),
    "deleteAccountConfirmPasswordSubtitle":
        MessageLookupByLibrary.simpleMessage(
          "أدخل كلمة مرورك لتأكيد حذف الحساب.",
        ),
    "deleteAccountConfirmPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "تأكيد هويتك",
    ),
    "deleteAccountMessage": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد حذف حسابك نهائيًا؟ لا يمكن التراجع عن هذا الإجراء وستُفقد جميع بياناتك.",
    ),
    "deleteAccountRequested": MessageLookupByLibrary.simpleMessage(
      "جارٍ طلب حذف الحساب...",
    ),
    "deleteAccountTitle": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "deleteAddressMessage": m8,
    "deleteAddressTitle": MessageLookupByLibrary.simpleMessage("حذف العنوان؟"),
    "deleteNotificationsConfirm": m9,
    "deliveryAddress": MessageLookupByLibrary.simpleMessage("عنوان التوصيل"),
    "description": MessageLookupByLibrary.simpleMessage("الوصف"),
    "discountedSubTotal": MessageLookupByLibrary.simpleMessage(
      "المجموع بعد الخصم",
    ),
    "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "ليس لديك حساب؟ ",
    ),
    "earlier": MessageLookupByLibrary.simpleMessage("سابقًا"),
    "editProfile": MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
    "egyptian_made": MessageLookupByLibrary.simpleMessage("🇪🇬 صناعة مصرية"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "emailInvalid": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني غير صالح",
    ),
    "emailInvalidDomain": MessageLookupByLibrary.simpleMessage(
      "النطاق بعد @ غير صالح",
    ),
    "emailInvalidFormat": MessageLookupByLibrary.simpleMessage(
      "صيغة البريد الإلكتروني غير صحيحة، تأكد من وجود @",
    ),
    "emailInvalidLocal": MessageLookupByLibrary.simpleMessage(
      "الجزء قبل @ يحتوي على أحرف غير صالحة",
    ),
    "emailInvalidTld": MessageLookupByLibrary.simpleMessage(
      "امتداد النطاق غير صالح (مثل .com أو .net)",
    ),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني مطلوب",
    ),
    "emailTooLong": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني طويل جدًا",
    ),
    "emptyFavoriteBody": MessageLookupByLibrary.simpleMessage(
      "ليس لديك أي عناصر محفوظة. انتقل إلى الرئيسية وأضف بعضها.",
    ),
    "emptyFavoriteTitle": MessageLookupByLibrary.simpleMessage(
      "لا توجد عناصر محفوظة!",
    ),
    "enterCouponCode": MessageLookupByLibrary.simpleMessage("أدخل رمز الكوبون"),
    "enterOrderNumber": MessageLookupByLibrary.simpleMessage("أدخل رقم الطلب…"),
    "enterOrderNumberToTrack": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم الطلب أعلاه لمتابعة توصيلك في الوقت الفعلي",
    ),
    "enterPhoneNumber": MessageLookupByLibrary.simpleMessage("أدخل رقم الهاتف"),
    "enterYourCardNumber": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم بطاقتك",
    ),
    "enterYourEmailAndPasswordToLogin": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني وكلمة المرور لتسجيل الدخول",
    ),
    "errorLoadingCategories": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل الفئات",
    ),
    "errorTitle": MessageLookupByLibrary.simpleMessage("حدث خطأ"),
    "error_account_blocked_action": MessageLookupByLibrary.simpleMessage(
      "تواصل مع الدعم",
    ),
    "error_account_blocked_message": MessageLookupByLibrary.simpleMessage(
      "تم تعليق حسابك. يرجى التواصل معنا.",
    ),
    "error_bad_gateway_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_bad_gateway_message": MessageLookupByLibrary.simpleMessage(
      "نواجه صعوبة في الوصول إلى خوادمنا. يرجى المحاولة مجددًا.",
    ),
    "error_bad_request_action": MessageLookupByLibrary.simpleMessage(
      "مراجعة والمحاولة مجددًا",
    ),
    "error_bad_request_message": MessageLookupByLibrary.simpleMessage(
      "يبدو أن هناك خطأً ما. يرجى مراجعة بياناتك.",
    ),
    "error_conflict_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_conflict_message": MessageLookupByLibrary.simpleMessage(
      "هذا الإجراء يتعارض مع بيانات موجودة. يرجى المحاولة مجددًا.",
    ),
    "error_connection_timeout_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_connection_timeout_message": MessageLookupByLibrary.simpleMessage(
      "يستغرق هذا وقتًا أطول من المعتاد. تحقق من اتصالك.",
    ),
    "error_email_not_verified_action": MessageLookupByLibrary.simpleMessage(
      "التحقق من البريد",
    ),
    "error_email_not_verified_message": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من بريدك الإلكتروني أولًا",
    ),
    "error_forbidden_action": MessageLookupByLibrary.simpleMessage("العودة"),
    "error_forbidden_message": MessageLookupByLibrary.simpleMessage(
      "ليس لديك صلاحية الوصول. هل تحتاج مساعدة؟ تواصل مع الدعم.",
    ),
    "error_gateway_timeout_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_gateway_timeout_message": MessageLookupByLibrary.simpleMessage(
      "استغرق الخادم وقتًا طويلًا للرد. يرجى المحاولة مجددًا.",
    ),
    "error_invalid_credentials_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_invalid_credentials_message": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني أو كلمة المرور غير صحيحة.",
    ),
    "error_no_internet_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_no_internet_message": MessageLookupByLibrary.simpleMessage(
      "يبدو أنك غير متصل بالإنترنت. تحقق من اتصالك وحاول مجددًا.",
    ),
    "error_not_found_action": MessageLookupByLibrary.simpleMessage("العودة"),
    "error_not_found_message": MessageLookupByLibrary.simpleMessage(
      "لم نتمكن من العثور على ما تبحث عنه.",
    ),
    "error_request_cancelled_action": MessageLookupByLibrary.simpleMessage(
      "إغلاق",
    ),
    "error_request_cancelled_message": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء الطلب.",
    ),
    "error_server_error_action": MessageLookupByLibrary.simpleMessage(
      "حاول مجددًا",
    ),
    "error_server_error_message": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في خوادمنا. نعمل على إصلاحه — يرجى المحاولة مجددًا.",
    ),
    "error_service_unavailable_action": MessageLookupByLibrary.simpleMessage(
      "حاول لاحقًا",
    ),
    "error_service_unavailable_message": MessageLookupByLibrary.simpleMessage(
      "الخدمة متوقفة مؤقتًا. يرجى المحاولة لاحقًا.",
    ),
    "error_token_expired_action": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول مجددًا",
    ),
    "error_token_expired_message": MessageLookupByLibrary.simpleMessage(
      "تم تسجيل خروجك. يرجى تسجيل الدخول مجددًا.",
    ),
    "error_too_many_requests_action": MessageLookupByLibrary.simpleMessage(
      "حاول لاحقًا",
    ),
    "error_too_many_requests_message": MessageLookupByLibrary.simpleMessage(
      "أنت تتحرك بسرعة كبيرة! يرجى الانتظار قليلًا والمحاولة مجددًا.",
    ),
    "error_unauthorized_action": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول",
    ),
    "error_unauthorized_message": MessageLookupByLibrary.simpleMessage(
      "يجب تسجيل الدخول للمتابعة.",
    ),
    "error_unknown_action": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "error_unknown_message": MessageLookupByLibrary.simpleMessage(
      "حدث شيء غير متوقع. يرجى المحاولة مجددًا.",
    ),
    "error_validation_failed_action": MessageLookupByLibrary.simpleMessage(
      "تصحيح والمتابعة",
    ),
    "error_validation_failed_message": MessageLookupByLibrary.simpleMessage(
      "بعض الحقول تحتاج إلى مراجعة قبل المتابعة.",
    ),
    "expiryDate": MessageLookupByLibrary.simpleMessage("تاريخ الانتهاء"),
    "exploreCategories": MessageLookupByLibrary.simpleMessage("استكشف الفئات"),
    "exploreHeka": MessageLookupByLibrary.simpleMessage("استكشف هيكا الآن"),
    "failedToGetLocation": MessageLookupByLibrary.simpleMessage(
      "فشل الحصول على الموقع. يرجى المحاولة مجددًا.",
    ),
    "favourites": MessageLookupByLibrary.simpleMessage("المفضلة"),
    "featured": MessageLookupByLibrary.simpleMessage("مميز"),
    "featuredBrands": MessageLookupByLibrary.simpleMessage(
      "علامات تجارية مميزة",
    ),
    "fetchingAddress": MessageLookupByLibrary.simpleMessage(
      "جارٍ جلب العنوان...",
    ),
    "fetchingOrderDetails": MessageLookupByLibrary.simpleMessage(
      "جارٍ جلب تفاصيل الطلب…",
    ),
    "fieldRequired": MessageLookupByLibrary.simpleMessage("هذا الحقل مطلوب"),
    "filterCategory": MessageLookupByLibrary.simpleMessage("الفئة"),
    "filterEgyptianMade": MessageLookupByLibrary.simpleMessage("صنع في مصر"),
    "filterImported": MessageLookupByLibrary.simpleMessage("مستورد"),
    "filterOrigin": MessageLookupByLibrary.simpleMessage("منشأ المنتج"),
    "filterPriceFrom": MessageLookupByLibrary.simpleMessage("من"),
    "filterPriceRange": MessageLookupByLibrary.simpleMessage("نطاق السعر"),
    "filterPriceTo": MessageLookupByLibrary.simpleMessage("إلى"),
    "filterReset": MessageLookupByLibrary.simpleMessage("إعادة تعيين"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("تصفية النتائج"),
    "filterTooltip": MessageLookupByLibrary.simpleMessage("تصفية النتائج"),
    "firstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
    "fitchingAddress": MessageLookupByLibrary.simpleMessage(
      "جارٍ جلب العنوان...",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور؟"),
    "freeShipping": MessageLookupByLibrary.simpleMessage("شحن مجاني"),
    "getStartedNow": MessageLookupByLibrary.simpleMessage("ابدأ الآن"),
    "go_back": MessageLookupByLibrary.simpleMessage("رجوع"),
    "goodAfternoon": MessageLookupByLibrary.simpleMessage("مساء الخير"),
    "goodEvening": MessageLookupByLibrary.simpleMessage("مساء النور"),
    "goodMorning": MessageLookupByLibrary.simpleMessage("صباح الخير"),
    "gpsButtonTooltip": MessageLookupByLibrary.simpleMessage("موقعي الحالي"),
    "guest": MessageLookupByLibrary.simpleMessage("ضيف"),
    "guestWishlistSubtitle": m10,
    "guestWishlistTitle": MessageLookupByLibrary.simpleMessage(
      "سجّل دخولك لحفظ قائمة الرغبات",
    ),
    "hello": MessageLookupByLibrary.simpleMessage("مرحبًا"),
    "home": MessageLookupByLibrary.simpleMessage("المنزل"),
    "iAgreeTo": MessageLookupByLibrary.simpleMessage("أوافق على "),
    "inStock": MessageLookupByLibrary.simpleMessage("متاح"),
    "in_stock": MessageLookupByLibrary.simpleMessage("متوفر"),
    "invalidCardNumber": MessageLookupByLibrary.simpleMessage(
      "رقم البطاقة غير صالح",
    ),
    "invalidCvv": MessageLookupByLibrary.simpleMessage("رمز CVV غير صالح"),
    "invalidExpiry": MessageLookupByLibrary.simpleMessage(
      "تاريخ الانتهاء غير صالح",
    ),
    "itemsYouMayLike": MessageLookupByLibrary.simpleMessage("منتجات قد تعجبك"),
    "joined": MessageLookupByLibrary.simpleMessage("انضم في"),
    "lang": MessageLookupByLibrary.simpleMessage("العربية"),
    "languageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "languageChangeError": MessageLookupByLibrary.simpleMessage(
      "فشل تغيير اللغة.",
    ),
    "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "languageLoadError": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل اللغة.",
    ),
    "languageToggleError": MessageLookupByLibrary.simpleMessage(
      "فشل التبديل بين اللغات.",
    ),
    "lastName": MessageLookupByLibrary.simpleMessage("اسم العائلة"),
    "locationDetailAddress": MessageLookupByLibrary.simpleMessage("العنوان"),
    "locationDetailCoordinates": MessageLookupByLibrary.simpleMessage(
      "الإحداثيات",
    ),
    "locationPermissionDenied": MessageLookupByLibrary.simpleMessage(
      "تم رفض إذن الموقع. يرجى السماح بالوصول إلى موقعك.",
    ),
    "locationPermissionDeniedForever": MessageLookupByLibrary.simpleMessage(
      "تم رفض إذن الموقع بشكل دائم. يمكنك تفعيله من الإعدادات.",
    ),
    "logOutConfirm": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "logOutMessage": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد تسجيل الخروج؟",
    ),
    "logOutTitle": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "loginToSave": MessageLookupByLibrary.simpleMessage(
      "سجّل دخولك لحفظ المفضلة",
    ),
    "loginToYourAccount": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول إلى حسابك",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "made_in": m11,
    "markAllRead": MessageLookupByLibrary.simpleMessage("تعليم الكل كمقروء"),
    "markAsRead": MessageLookupByLibrary.simpleMessage("تعليم كمقروء"),
    "menuAddressBook": MessageLookupByLibrary.simpleMessage("دفتر العناوين"),
    "menuChangeLanguage": MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
    "menuDeleteAccount": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "menuFaqs": MessageLookupByLibrary.simpleMessage("الأسئلة الشائعة"),
    "menuHelpCenter": MessageLookupByLibrary.simpleMessage("مركز المساعدة"),
    "menuLogOut": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "menuMyOrders": MessageLookupByLibrary.simpleMessage("طلباتي"),
    "menuNotifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "menuTheme": MessageLookupByLibrary.simpleMessage("المظهر"),
    "myOrdersGenericError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مجددًا.",
    ),
    "myOrdersItemCount": m12,
    "myOrdersLeaveReview": MessageLookupByLibrary.simpleMessage("اكتب تقييم"),
    "myOrdersLoadError": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل الطلبات",
    ),
    "myOrdersNewestFirst": MessageLookupByLibrary.simpleMessage("الأحدث أولًا"),
    "myOrdersNoCompleted": MessageLookupByLibrary.simpleMessage(
      "لا توجد طلبات مكتملة",
    ),
    "myOrdersNoCompletedSubtitle": MessageLookupByLibrary.simpleMessage(
      "ستظهر هنا طلباتك المكتملة والملغاة.",
    ),
    "myOrdersNoOngoing": MessageLookupByLibrary.simpleMessage(
      "لا توجد طلبات جارية",
    ),
    "myOrdersNoOngoingSubtitle": MessageLookupByLibrary.simpleMessage(
      "ليس لديك طلبات نشطة الآن. ابدأ التسوق!",
    ),
    "myOrdersOldestFirst": MessageLookupByLibrary.simpleMessage("الأقدم أولًا"),
    "myOrdersRating1": MessageLookupByLibrary.simpleMessage("سيء"),
    "myOrdersRating2": MessageLookupByLibrary.simpleMessage("مقبول"),
    "myOrdersRating3": MessageLookupByLibrary.simpleMessage("جيد"),
    "myOrdersRating4": MessageLookupByLibrary.simpleMessage("جيد جداً"),
    "myOrdersRating5": MessageLookupByLibrary.simpleMessage("ممتاز!"),
    "myOrdersRatingNone": MessageLookupByLibrary.simpleMessage(
      "اضغط على نجمة للتقييم",
    ),
    "myOrdersRatingRequired": MessageLookupByLibrary.simpleMessage(
      "يجب تقييم الطلب",
    ),
    "myOrdersReviewHint": MessageLookupByLibrary.simpleMessage(
      "شاركنا تجربتك مع هذا الطلب...",
    ),
    "myOrdersReviewSubmit": MessageLookupByLibrary.simpleMessage(
      "إرسال التقييم",
    ),
    "myOrdersReviewSubmitted": MessageLookupByLibrary.simpleMessage(
      "تم إرسال تقييمك — شكراً!",
    ),
    "myOrdersReviewSuccess": MessageLookupByLibrary.simpleMessage(
      "تم إرسال التقييم. شكراً لك!",
    ),
    "myOrdersReviewTitle": MessageLookupByLibrary.simpleMessage("قيّم طلبك"),
    "myOrdersReviewTooShort": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون التقييم على الأقل 10 أحرف",
    ),
    "myOrdersStatusCancelled": MessageLookupByLibrary.simpleMessage("ملغى"),
    "myOrdersStatusConfirmed": MessageLookupByLibrary.simpleMessage("مؤكد"),
    "myOrdersStatusDelivered": MessageLookupByLibrary.simpleMessage(
      "تم التسليم",
    ),
    "myOrdersStatusPending": MessageLookupByLibrary.simpleMessage(
      "قيد الانتظار",
    ),
    "myOrdersStatusProcessing": MessageLookupByLibrary.simpleMessage(
      "قيد المعالجة",
    ),
    "myOrdersStatusReturned": MessageLookupByLibrary.simpleMessage("مُعاد"),
    "myOrdersStatusShipped": MessageLookupByLibrary.simpleMessage("تم الشحن"),
    "myOrdersStatusUnknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
    "myOrdersTabCompleted": MessageLookupByLibrary.simpleMessage("مكتملة"),
    "myOrdersTabOngoing": MessageLookupByLibrary.simpleMessage("جارية"),
    "myOrdersTitle": MessageLookupByLibrary.simpleMessage("طلباتي"),
    "myOrdersTrackOrder": MessageLookupByLibrary.simpleMessage("تتبع الطلب"),
    "nameInvalid": MessageLookupByLibrary.simpleMessage(
      "الاسم يحتوي على أحرف غير صالحة",
    ),
    "nameRequired": MessageLookupByLibrary.simpleMessage("الاسم مطلوب"),
    "nameTooLong": MessageLookupByLibrary.simpleMessage(
      "يجب ألا يتجاوز الاسم 50 حرفًا",
    ),
    "nameTooShort": MessageLookupByLibrary.simpleMessage(
      "يجب أن يتكون الاسم من 3 أحرف على الأقل",
    ),
    "newCard": MessageLookupByLibrary.simpleMessage("بطاقة جديدة"),
    "newPassword": MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "nicknameHint": MessageLookupByLibrary.simpleMessage("مثال: منزل الأم"),
    "noAddressesYet": MessageLookupByLibrary.simpleMessage(
      "لا توجد عناوين بعد",
    ),
    "noCategoriesAvailable": MessageLookupByLibrary.simpleMessage(
      "لا توجد فئات متاحة",
    ),
    "noLocationSelected": MessageLookupByLibrary.simpleMessage(
      "لم يتم تحديد موقع بعد",
    ),
    "noNotificationsYet": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات بعد",
    ),
    "noProductsYet": MessageLookupByLibrary.simpleMessage("لا توجد منتجات بعد"),
    "noProductsYetSubtitle": MessageLookupByLibrary.simpleMessage(
      "هذه الماركة لم تضف أي منتجات بعد.\nتحقق مرة أخرى قريبًا!",
    ),
    "noResults": MessageLookupByLibrary.simpleMessage("لا توجد نتائج"),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("لا توجد نتائج"),
    "noResultsSubtitle": MessageLookupByLibrary.simpleMessage(
      "جرّب كلمات مختلفة أو\nأزل بعض الفلاتر",
    ),
    "noReviews": MessageLookupByLibrary.simpleMessage("لا توجد تقييمات بعد"),
    "noSubCategories": MessageLookupByLibrary.simpleMessage(
      "لا توجد فئات فرعية",
    ),
    "noUnreadNotifications": MessageLookupByLibrary.simpleMessage(
      "ليس لديك إشعارات غير مقروءة.\nأنت على اطلاع بكل شيء!",
    ),
    "no_reviews_yet": MessageLookupByLibrary.simpleMessage(
      "لا يوجد تقييمات بعد",
    ),
    "notAvailableYet": MessageLookupByLibrary.simpleMessage("غير متاح بعد"),
    "notificationTypeAlert": MessageLookupByLibrary.simpleMessage("تنبيه"),
    "notificationTypeMessage": MessageLookupByLibrary.simpleMessage("رسالة"),
    "notificationTypeOrder": MessageLookupByLibrary.simpleMessage("طلب"),
    "notificationTypePayment": MessageLookupByLibrary.simpleMessage("دفع"),
    "notificationTypePromotion": MessageLookupByLibrary.simpleMessage("عرض"),
    "notificationTypeReview": MessageLookupByLibrary.simpleMessage("تقييم"),
    "notificationTypeShipping": MessageLookupByLibrary.simpleMessage("شحن"),
    "notificationTypeSystem": MessageLookupByLibrary.simpleMessage("النظام"),
    "notificationTypeUnknown": MessageLookupByLibrary.simpleMessage("إشعار"),
    "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "notificationsWillAppearHere": MessageLookupByLibrary.simpleMessage(
      "عندما تصلك إشعارات،\nستظهر هنا.",
    ),
    "off": MessageLookupByLibrary.simpleMessage("خصم"),
    "onboardingBody": MessageLookupByLibrary.simpleMessage(
      "تواصل مباشرة مع الحرفيين المحليين والبائعين الموثوقين. من التحف اليدوية إلى التصميم المصري الحديث، كل ذلك في سوق واحد موثوق.",
    ),
    "onboardingTitle": MessageLookupByLibrary.simpleMessage(
      "مرحبًا بك في هيكا",
    ),
    "only_x_left_in_stock": m13,
    "only_x_left_label": m14,
    "openSettings": MessageLookupByLibrary.simpleMessage("فتح الإعدادات"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("أو سجّل الدخول بـ"),
    "orRegisterWith": MessageLookupByLibrary.simpleMessage("أو سجّل بـ"),
    "orderAddressAddNew": MessageLookupByLibrary.simpleMessage(
      "إضافة عنوان توصيل",
    ),
    "orderAddressChange": MessageLookupByLibrary.simpleMessage("تغيير"),
    "orderAddressLoadError": MessageLookupByLibrary.simpleMessage(
      "تعذّر تحميل عناوينك",
    ),
    "orderCancelledSubtitle": MessageLookupByLibrary.simpleMessage(
      "لا تقلق — سلتك لا تزال محفوظة. يمكنك إتمام طلبك في أي وقت.",
    ),
    "orderCancelledTip1": MessageLookupByLibrary.simpleMessage(
      "منتجاتك لا تزال في سلتك",
    ),
    "orderCancelledTip2": MessageLookupByLibrary.simpleMessage(
      "عد في أي وقت لإتمام عملية الشراء",
    ),
    "orderCancelledTitle": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء الدفع",
    ),
    "orderCancelledTryAgain": MessageLookupByLibrary.simpleMessage(
      "العودة إلى إتمام الشراء",
    ),
    "orderConfirmCash": MessageLookupByLibrary.simpleMessage("تأكيد الطلب"),
    "orderDetailsCopied": MessageLookupByLibrary.simpleMessage(
      "تم نسخ رقم الطلب",
    ),
    "orderDetailsPayment": MessageLookupByLibrary.simpleMessage("الدفع"),
    "orderDetailsPriceSummary": MessageLookupByLibrary.simpleMessage(
      "ملخص السعر",
    ),
    "orderDetailsProducts": MessageLookupByLibrary.simpleMessage("المنتجات"),
    "orderDetailsShipping": MessageLookupByLibrary.simpleMessage(
      "معلومات الشحن",
    ),
    "orderDetailsShippingCost": MessageLookupByLibrary.simpleMessage("الشحن"),
    "orderDetailsSubtotal": MessageLookupByLibrary.simpleMessage(
      "المجموع الجزئي",
    ),
    "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
    "orderDetailsTotal": MessageLookupByLibrary.simpleMessage("الإجمالي"),
    "orderFailedErrorLabel": MessageLookupByLibrary.simpleMessage(
      "تفاصيل الخطأ",
    ),
    "orderFailedRetry": MessageLookupByLibrary.simpleMessage("حاول مجددًا"),
    "orderFailedSubtitle": MessageLookupByLibrary.simpleMessage(
      "تعذّر معالجة دفعتك. طلبك محفوظ — يمكنك المحاولة مجددًا.",
    ),
    "orderFailedTip1": MessageLookupByLibrary.simpleMessage(
      "حاول تأكيد الطلب مجددًا",
    ),
    "orderFailedTip2": MessageLookupByLibrary.simpleMessage(
      "تحقق من بيانات بطاقتك أو جرّب بطاقة أخرى",
    ),
    "orderFailedTip3": MessageLookupByLibrary.simpleMessage(
      "تواصل مع الدعم إذا استمرت المشكلة",
    ),
    "orderFailedTitle": MessageLookupByLibrary.simpleMessage("فشل الدفع"),
    "orderFailedWhatNext": MessageLookupByLibrary.simpleMessage(
      "ماذا يمكنك فعله",
    ),
    "orderFieldFirstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
    "orderFieldLastName": MessageLookupByLibrary.simpleMessage("اسم العائلة"),
    "orderFieldNotesHint": MessageLookupByLibrary.simpleMessage(
      "أي تعليمات خاصة...",
    ),
    "orderFieldPhone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "orderFieldPhoneInvalid": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم هاتف صالح",
    ),
    "orderFieldRequired": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل مطلوب",
    ),
    "orderGenericError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مجددًا.",
    ),
    "orderId": MessageLookupByLibrary.simpleMessage("رقم الطلب"),
    "orderNoAddressSelected": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار عنوان توصيل",
    ),
    "orderNumber": MessageLookupByLibrary.simpleMessage("رقم الطلب"),
    "orderNumberCopied": MessageLookupByLibrary.simpleMessage(
      "تم نسخ رقم الطلب",
    ),
    "orderOptional": MessageLookupByLibrary.simpleMessage("اختياري"),
    "orderPaymentCash": MessageLookupByLibrary.simpleMessage(
      "الدفع عند الاستلام",
    ),
    "orderPaymentCashSubtitle": MessageLookupByLibrary.simpleMessage(
      "ادفع عند وصول طلبك",
    ),
    "orderPaymentOnline": MessageLookupByLibrary.simpleMessage(
      "الدفع الإلكتروني",
    ),
    "orderPaymentOnlineSubtitle": MessageLookupByLibrary.simpleMessage(
      "Visa، Mastercard عبر Paymob",
    ),
    "orderPlacingOrder": MessageLookupByLibrary.simpleMessage(
      "جارٍ تأكيد طلبك...",
    ),
    "orderProceedToPayment": MessageLookupByLibrary.simpleMessage(
      "المتابعة للدفع",
    ),
    "orderProgress": MessageLookupByLibrary.simpleMessage("تقدم الطلب"),
    "orderSectionContact": MessageLookupByLibrary.simpleMessage(
      "بيانات الاتصال",
    ),
    "orderSectionDeliveryAddress": MessageLookupByLibrary.simpleMessage(
      "عنوان التوصيل",
    ),
    "orderSectionNotes": MessageLookupByLibrary.simpleMessage("ملاحظات الطلب"),
    "orderSectionPayment": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
    "orderSuccessBackToHome": MessageLookupByLibrary.simpleMessage(
      "العودة إلى الرئيسية",
    ),
    "orderSuccessOrderNumber": MessageLookupByLibrary.simpleMessage(
      "رقم الطلب",
    ),
    "orderSuccessPaymentMethod": MessageLookupByLibrary.simpleMessage(
      "طريقة الدفع",
    ),
    "orderSuccessStatus": MessageLookupByLibrary.simpleMessage("الحالة"),
    "orderSuccessSubtitleCod": MessageLookupByLibrary.simpleMessage(
      "طلبك مؤكد. سنتواصل معك قبل التسليم.",
    ),
    "orderSuccessSubtitleOnline": MessageLookupByLibrary.simpleMessage(
      "تم استلام الدفع. طلبك في الطريق!",
    ),
    "orderSuccessTitle": MessageLookupByLibrary.simpleMessage(
      "تم تأكيد الطلب!",
    ),
    "orderSuccessTotal": MessageLookupByLibrary.simpleMessage("الإجمالي"),
    "orderSuccessTrackOrder": MessageLookupByLibrary.simpleMessage("تتبع طلبي"),
    "orderSummary": MessageLookupByLibrary.simpleMessage("ملخص الطلب"),
    "other": MessageLookupByLibrary.simpleMessage("أخرى"),
    "otpInvalid": MessageLookupByLibrary.simpleMessage(
      "يجب أن يحتوي رمز التحقق على أرقام فقط",
    ),
    "otpRequired": MessageLookupByLibrary.simpleMessage("رمز التحقق مطلوب"),
    "otpResentSuccess": MessageLookupByLibrary.simpleMessage(
      "تم إعادة إرسال الرمز بنجاح",
    ),
    "otpTooShort": MessageLookupByLibrary.simpleMessage("رمز التحقق غير مكتمل"),
    "outOfStock": MessageLookupByLibrary.simpleMessage("نفذت الكمية"),
    "out_of_stock": MessageLookupByLibrary.simpleMessage("نفد المخزون"),
    "out_of_stock_label": MessageLookupByLibrary.simpleMessage(
      "نفد من المخزون",
    ),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "كلمتا المرور غير متطابقتين",
    ),
    "passwordNoLowercase": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على حرف صغير",
    ),
    "passwordNoNumber": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على رقم",
    ),
    "passwordNoSpecialChar": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على رمز خاص",
    ),
    "passwordNoUppercase": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على حرف كبير",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور مطلوبة",
    ),
    "passwordTooLong": MessageLookupByLibrary.simpleMessage(
      "يجب ألا تتجاوز كلمة المرور 32 حرفًا",
    ),
    "passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "يجب أن تتكون كلمة المرور من 8 أحرف على الأقل",
    ),
    "passwordTooWeak": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور ضعيفة جدًا، تجنب تكرار الأحرف",
    ),
    "paymentCancelDialogConfirm": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "paymentCancelDialogContent": MessageLookupByLibrary.simpleMessage(
      "تم تأكيد طلبك. إذا ألغيت الآن يمكنك إتمام الدفع لاحقًا.",
    ),
    "paymentCancelDialogContinue": MessageLookupByLibrary.simpleMessage(
      "متابعة الدفع",
    ),
    "paymentCancelDialogTitle": MessageLookupByLibrary.simpleMessage(
      "إلغاء الدفع؟",
    ),
    "paymentMethod": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
    "paymentWebViewConnecting": MessageLookupByLibrary.simpleMessage(
      "جارٍ الاتصال بالدفع...",
    ),
    "paymentWebViewLoadError": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل صفحة الدفع",
    ),
    "paymentWebViewLoadErrorHint": MessageLookupByLibrary.simpleMessage(
      "تحقق من اتصالك وحاول مجددًا",
    ),
    "paymentWebViewRetry": MessageLookupByLibrary.simpleMessage(
      "إعادة المحاولة",
    ),
    "paymentWebViewSecure": MessageLookupByLibrary.simpleMessage(
      "تم إنشاء اتصال آمن",
    ),
    "paymentWebViewSecureNote": MessageLookupByLibrary.simpleMessage(
      "دفعتك مشفّرة وآمنة",
    ),
    "paymentWebViewTitle": MessageLookupByLibrary.simpleMessage("دفع آمن"),
    "permissionRequired": MessageLookupByLibrary.simpleMessage("الإذن مطلوب"),
    "phoneInvalid": MessageLookupByLibrary.simpleMessage("رقم الهاتف غير صالح"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "phoneRequired": MessageLookupByLibrary.simpleMessage("رقم الهاتف مطلوب"),
    "placeOrder": MessageLookupByLibrary.simpleMessage("تأكيد الطلب"),
    "previouslyViewedItem": MessageLookupByLibrary.simpleMessage(
      "منتجات شاهدتها مسبقًا",
    ),
    "priceEgp": m15,
    "price_adjustment_egp": m16,
    "price_egp": m17,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "productId": MessageLookupByLibrary.simpleMessage("رقم المنتج"),
    "products": MessageLookupByLibrary.simpleMessage("المنتجات"),
    "rating": MessageLookupByLibrary.simpleMessage("التقييم"),
    "readAt": MessageLookupByLibrary.simpleMessage("قُرئ في"),
    "received": MessageLookupByLibrary.simpleMessage("تم الاستلام"),
    "recentSearches": MessageLookupByLibrary.simpleMessage(
      "عمليات البحث الأخيرة",
    ),
    "recommendedForYou": MessageLookupByLibrary.simpleMessage("موصى به لك"),
    "refresh": MessageLookupByLibrary.simpleMessage("تحديث"),
    "register": MessageLookupByLibrary.simpleMessage("تسجيل"),
    "rememberMe": MessageLookupByLibrary.simpleMessage("تذكرني"),
    "removeFilters": MessageLookupByLibrary.simpleMessage("إزالة الفلاتر"),
    "removeItem": MessageLookupByLibrary.simpleMessage("إزالة"),
    "removedFromWishlist": MessageLookupByLibrary.simpleMessage(
      "تمت الإزالة من المفضلة",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
    "resetPasswordNewPasswordBody": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة مرورك الجديدة أدناه لتأمين حسابك.",
    ),
    "resetPasswordNewPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "تعيين كلمة مرور جديدة",
    ),
    "resetPasswordOtpBody": MessageLookupByLibrary.simpleMessage(
      "أدخل الرمز الذي أرسلناه إلى بريدك الإلكتروني لإعادة تعيين كلمة المرور.",
    ),
    "resetPasswordOtpTitle": MessageLookupByLibrary.simpleMessage(
      "أوشكت على الانتهاء!",
    ),
    "resetPasswordRequestBody": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني وسنرشدك خلال عملية إعادة التعيين.",
    ),
    "resetPasswordRequestTitle": MessageLookupByLibrary.simpleMessage(
      "لنعيد تعيين كلمة مرورك",
    ),
    "resetPasswordSuccess": MessageLookupByLibrary.simpleMessage(
      "تم إعادة تعيين كلمة المرور بنجاح",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "reviews": m18,
    "rider": MessageLookupByLibrary.simpleMessage("المندوب"),
    "riderLocation": MessageLookupByLibrary.simpleMessage("موقع المندوب"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("حفظ التغييرات"),
    "savedCards": MessageLookupByLibrary.simpleMessage("البطاقات المحفوظة"),
    "searchAddressHint": MessageLookupByLibrary.simpleMessage(
      "البحث بالاسم أو الشارع أو المدينة...",
    ),
    "searchForLocation": MessageLookupByLibrary.simpleMessage("ابحث عن مكان"),
    "searchHint": MessageLookupByLibrary.simpleMessage("ابحث عن منتج..."),
    "searchResultsCount": m19,
    "searchTip": MessageLookupByLibrary.simpleMessage(
      "اضغط على أي بحث سابق لتشغيله مجددًا",
    ),
    "securityCode": MessageLookupByLibrary.simpleMessage("رمز الأمان"),
    "see_all": MessageLookupByLibrary.simpleMessage("اظهار الكل"),
    "select": MessageLookupByLibrary.simpleMessage("تحديد"),
    "selectAll": MessageLookupByLibrary.simpleMessage("تحديد الكل"),
    "selectLocationSubtitle": MessageLookupByLibrary.simpleMessage(
      "ابحث أو اضغط في أي مكان على الخريطة",
    ),
    "selectLocationTitle": MessageLookupByLibrary.simpleMessage("موقعك"),
    "select_options": MessageLookupByLibrary.simpleMessage("اختر الخيارات"),
    "selectedCount": m20,
    "selectionHint": MessageLookupByLibrary.simpleMessage(
      "اضغط مطولًا للتحديد • اسحب يسارًا للحذف",
    ),
    "setAsDefault": MessageLookupByLibrary.simpleMessage("تعيين كافتراضي"),
    "setAsDefaultAddress": MessageLookupByLibrary.simpleMessage(
      "تعيين كعنوان افتراضي",
    ),
    "shippingFee": MessageLookupByLibrary.simpleMessage("رسوم الشحن"),
    "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بـ Google",
    ),
    "signUp": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signupWithGoogle": MessageLookupByLibrary.simpleMessage(
      "التسجيل بـ Google",
    ),
    "similar_products": MessageLookupByLibrary.simpleMessage("منتجات مشابهة"),
    "skipForNow": MessageLookupByLibrary.simpleMessage("تخطي الآن"),
    "sold_by": MessageLookupByLibrary.simpleMessage("يُباع بواسطة"),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "startSearch": MessageLookupByLibrary.simpleMessage("ابدأ البحث"),
    "startSearchSubtitle": MessageLookupByLibrary.simpleMessage(
      "اكتب كلمة في الأعلى للبحث\nعن المنتجات التي تريدها",
    ),
    "startShopping": MessageLookupByLibrary.simpleMessage("ابدأ التسوق"),
    "statusCancelled": MessageLookupByLibrary.simpleMessage("ملغى"),
    "statusConfirmed": MessageLookupByLibrary.simpleMessage("تم التأكيد"),
    "statusDelivered": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
    "statusDescCancelled": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء طلبك",
    ),
    "statusDescConfirmed": MessageLookupByLibrary.simpleMessage(
      "تم تأكيد طلبك وسيتم تحضيره قريباً",
    ),
    "statusDescDelivered": MessageLookupByLibrary.simpleMessage(
      "تم توصيل طلبك بنجاح",
    ),
    "statusDescPending": MessageLookupByLibrary.simpleMessage(
      "تم تقديم طلبك وهو في انتظار التأكيد",
    ),
    "statusDescProcessing": MessageLookupByLibrary.simpleMessage(
      "البائع يقوم بتحضير طلبك",
    ),
    "statusDescReturned": MessageLookupByLibrary.simpleMessage(
      "تم إعادة طلبك بنجاح",
    ),
    "statusDescShipped": MessageLookupByLibrary.simpleMessage(
      "طلبك في طريقه إليك",
    ),
    "statusPending": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
    "statusProcessing": MessageLookupByLibrary.simpleMessage("قيد المعالجة"),
    "statusReturned": MessageLookupByLibrary.simpleMessage("مُعاد"),
    "statusShipped": MessageLookupByLibrary.simpleMessage("تم الشحن"),
    "statusUnknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
    "stepCompleted": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
    "subtotal": MessageLookupByLibrary.simpleMessage("المجموع الجزئي"),
    "termsOfUse": MessageLookupByLibrary.simpleMessage("شروط الاستخدام"),
    "themeChangeError": MessageLookupByLibrary.simpleMessage(
      "فشل تغيير المظهر.",
    ),
    "themeDark": MessageLookupByLibrary.simpleMessage("داكن"),
    "themeLight": MessageLookupByLibrary.simpleMessage("فاتح"),
    "themeLoadError": MessageLookupByLibrary.simpleMessage("فشل تحميل المظهر."),
    "themeSystemDefault": MessageLookupByLibrary.simpleMessage(
      "افتراضي النظام",
    ),
    "themeToggleError": MessageLookupByLibrary.simpleMessage(
      "فشل التبديل بين المظاهر.",
    ),
    "thisMonth": MessageLookupByLibrary.simpleMessage("هذا الشهر"),
    "thisWeek": MessageLookupByLibrary.simpleMessage("هذا الأسبوع"),
    "today": MessageLookupByLibrary.simpleMessage("اليوم"),
    "total": MessageLookupByLibrary.simpleMessage("الإجمالي"),
    "track": MessageLookupByLibrary.simpleMessage("تتبع"),
    "trackOrder": MessageLookupByLibrary.simpleMessage("تتبع الطلب"),
    "trackYourOrder": MessageLookupByLibrary.simpleMessage("تتبع طلبك"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("حاول مجددًا"),
    "tryDifferentSearch": MessageLookupByLibrary.simpleMessage(
      "جرب اسمًا أو شارعًا أو مدينة مختلفة.",
    ),
    "unread": MessageLookupByLibrary.simpleMessage("غير مقروء"),
    "unreadCount": m21,
    "variant_price_adjustment": m22,
    "vat": MessageLookupByLibrary.simpleMessage("ضريبة القيمة المضافة (%)"),
    "vendor": MessageLookupByLibrary.simpleMessage("البائع"),
    "vendorId": MessageLookupByLibrary.simpleMessage("رقم البائع"),
    "verify": MessageLookupByLibrary.simpleMessage("تحقق"),
    "verifyEmailOtpBody": MessageLookupByLibrary.simpleMessage(
      "أدخل الرمز الذي أرسلناه إلى بريدك الإلكتروني",
    ),
    "verifyEmailOtpTitle": MessageLookupByLibrary.simpleMessage(
      "تحقق من بريدك الإلكتروني",
    ),
    "viewAll": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "work": MessageLookupByLibrary.simpleMessage("العمل"),
    "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
  };
}
