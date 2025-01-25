import 'package:dio/dio.dart';

/// Dio Interceptor to handle requests, responses, and errors globally.
class DioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add common headers or authentication tokens to requests
    options.headers["Authorization"] = "Bearer your_token_here";
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Optionally handle responses globally, e.g., logging
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // Handle network or response errors globally
    super.onError(err, handler);
  }
}
