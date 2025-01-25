import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Service class to handle notifications
class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initialize the notification service
  Future<void> init() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings('app_icon'));
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  /// Show a simple notification
  Future<void> showNotification(String title, String message) async {
    const NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
          'channel_id', 'channel_name'),
    );
    await _flutterLocalNotificationsPlugin.show(
        0, title, message, notificationDetails);
  }
}
