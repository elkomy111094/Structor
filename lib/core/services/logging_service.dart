/// Service class to handle logging within the app.
import 'package:logger/logger.dart';

class LoggingService {
  final Logger _logger = Logger();

  /// Log an info message.
  void logInfo(String message) {
    _logger.i(message);
  }

  /// Log a warning message.
  void logWarning(String message) {
    _logger.w(message);
  }

  /// Log an error message.
  void logError(String message, [dynamic error]) {
    _logger.e(message, error: error);
  }

  /// Log a debug message.
  void logDebug(String message) {
    _logger.d(message);
  }
}
