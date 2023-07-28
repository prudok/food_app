import 'package:firebase_messaging/firebase_messaging.dart';

abstract class FirebaseAPI {
  Future<void> initNotifications();

  Future<void> initPushNotifications();

  Future<void> initLocalNotifications();

  void handleMessage(RemoteMessage message);
}
