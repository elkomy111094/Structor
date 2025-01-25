import 'package:firebase_messaging/firebase_messaging.dart';

/// Service class to handle push notifications.
class PushNotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// Request permission for receiving push notifications.
  Future<void> requestPermission() async {
    NotificationSettings settings =
        await _firebaseMessaging.requestPermission();
    print('Permission granted: ${settings.authorizationStatus}');
  }

  /// Subscribe to a topic for push notifications.
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  /// Unsubscribe from a topic.
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  /// Listen to foreground messages.
  void listenToForegroundMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a foreground message: ${message.notification?.title}');
    });
  }
}
