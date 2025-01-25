import 'package:logger/logger.dart';

/// Utility class for logging.
class AppLogger {
  static final Logger _logger = Logger();

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logWarning(String message) {
    _logger.w(message);
  }

  static void logError(String message, [dynamic error]) {
    _logger.e(message, error: error);
  }

  static void logDebug(String message) {
    _logger.d(message);
  }
}
