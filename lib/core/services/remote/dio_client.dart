import 'package:dio/dio.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/interceptors/auth_interceptor.dart';
import 'package:heka_store/core/services/remote/interceptors/language_interceptor.dart';
import 'package:heka_store/core/services/remote/interceptors/logger_interceptor.dart';

class DioClient {
  DioClient._internal();
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late final Dio dio;
  // expose it so the bloc can call updateLanguage()
  final languageInterceptor = LanguageInterceptor(); 

  final String _baseUrl = ApiConstants.baseUrl;

  void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    dio.interceptors.addAll([
      AuthInterceptor(dio),
      languageInterceptor, 
      LoggerInterceptor(),
    ]);
  }
}