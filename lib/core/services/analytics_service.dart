import 'package:firebase_analytics/firebase_analytics.dart';

/// Service class to handle analytics.
class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  /// Log an event in the app.
  Future<void> logEvent(String name, {Map<String, Object>? parameters}) async {
    await _analytics.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  /// Log a screen view.
  Future<void> logScreenView(String screenName) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }
}
