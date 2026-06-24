import 'package:dio/dio.dart';

class LanguageInterceptor extends Interceptor {
  String _langCode = 'en'; // default

  void updateLanguage(String langCode) {
    _langCode = langCode;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('🌐 Accept-Language: $_langCode');
    options.headers['Accept-Language'] = _langCode;
    super.onRequest(options, handler);
  }
}
