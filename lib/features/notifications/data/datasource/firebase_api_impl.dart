import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/core/injection.dart';
import 'package:food_app/features/notifications/data/datasource/firebase_api.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {}

class FirebaseAPIImpl extends FirebaseAPI {
  FirebaseAPIImpl(this.firebaseMessaging);

  final FirebaseMessaging firebaseMessaging;
  final _androidChannel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications',
  );
  final _localNotifications = FlutterLocalNotificationsPlugin();

  @override
  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    await initPushNotifications();
    await initPushNotifications();
  }

  @override
  Future<void> initPushNotifications() async {
    await firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    await firebaseMessaging.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      if (notification == null) return;
      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _androidChannel.id,
            _androidChannel.name,
            channelDescription: _androidChannel.description,
            icon: '@drawable/android_logo',
          ),
        ),
        payload: jsonEncode(message.toMap()),
      );
    });
  }

  @override
  Future<void> initLocalNotifications() async {
    const iOS = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/android_logo');
    const settings = InitializationSettings(android: android, iOS: iOS);
    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (payload) {
        // TODO(rel1nce): get info about casting dynamic variables
        final message = RemoteMessage.fromMap(
          jsonDecode(payload as String) as Map<String, dynamic>,
        );
        handleMessage(message);
      },
    );
    final platform = _localNotifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    await platform?.createNotificationChannel(_androidChannel);
  }

  @override
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    getIt.get<AppRouter>().push(PlaygroundRoute(message: message));
  }
}
