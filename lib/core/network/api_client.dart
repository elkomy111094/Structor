import 'package:dio/dio.dart';
import 'package:structor/core/error/app_exceptions.dart';

import 'response_handler.dart';

/// API Client to handle network requests using Dio package.
class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  /// Send GET request to the provided URL.
  Future<dynamic> get(String url) async {
    try {
      final response = await dio.get(url);
      return ResponseHandler.handleResponse(response);
    } on DioError catch (e) {
      throw AppException("Error fetching data from API: ${e.message}");
    }
  }

  /// Send POST request to the provided URL.
  Future<dynamic> post(String url, dynamic data) async {
    try {
      final response = await dio.post(url, data: data);
      return ResponseHandler.handleResponse(response);
    } on DioError catch (e) {
      throw AppException("Error posting data: ${e.message}");
    }
  }
}
