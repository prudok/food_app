import 'package:firebase_messaging/firebase_messaging.dart';

abstract class FirebaseAPI {
  Future<void> initNotifications();

  Future<void> handleMessage(RemoteMessage? message);
}
