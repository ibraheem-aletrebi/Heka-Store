import 'package:dio/dio.dart';
import 'package:heka_store/core/services/nominatim/nominatim_place.dart';

class NominatimService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://nominatim.openstreetmap.org',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'User-Agent': 'HekaApp/1.0'},
    ),
  );

  Future<List<NominatimPlace>> search({
    required String query,
    String language = 'en',
    int limit = 5,
  }) async {
    try {
      final response = await _dio.get(
        '/search',
        queryParameters: {
          'q': query,
          'format': 'jsonv2',
          'limit': limit,
          'addressdetails': 1,
          'accept-language': language,
        },
      );
      final List data = response.data as List;
      return data
          .map((e) => NominatimPlace.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return [];
    }
  }

  Future<NominatimPlace?> reverseGeocode({
    required double lat,
    required double lng,
    String language = 'en',
  }) async {
    try {
      final response = await _dio.get(
        '/reverse',
        queryParameters: {
          'lat': lat,
          'lon': lng,
          'format': 'jsonv2',
          'addressdetails': 1,
          'accept-language': language,
        },
      );
      if (response.data == null || response.data['error'] != null) {
        return null;
      }
      return NominatimPlace.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (_) {
      return null;
    }
  }
}