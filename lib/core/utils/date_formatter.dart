import 'package:intl/intl.dart';

/// Utility class for date formatting.
class DateFormatter {
  /// Format a DateTime to a readable string.
  static String formatDate(DateTime date, {String pattern = 'yyyy-MM-dd'}) {
    return DateFormat(pattern).format(date);
  }

  /// Parse a string to DateTime.
  static DateTime parseDate(String dateString,
      {String pattern = 'yyyy-MM-dd'}) {
    return DateFormat(pattern).parse(dateString);
  }
}
