import 'package:dio/dio.dart';
import 'package:structor/core/error/app_exceptions.dart';

/// Utility class to handle API responses globally
class ResponseHandler {
  /// Handles response data, returns the data or throws an exception.
  static dynamic handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw AppException(
          "Failed to fetch data. Status: ${response.statusCode}");
    }
  }
}
