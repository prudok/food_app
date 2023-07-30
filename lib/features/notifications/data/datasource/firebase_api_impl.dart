import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/core/asset_paths.dart';
import 'package:food_app/core/image_path_converter.dart';
import 'package:food_app/core/injection.dart';
import 'package:food_app/features/notifications/data/datasource/firebase_api.dart';

class FirebaseAPIImpl extends FirebaseAPI {
  FirebaseAPIImpl(this.firebaseMessaging);

  final FirebaseMessaging firebaseMessaging;
  final _localNotifications = FlutterLocalNotificationsPlugin();
  final _androidChannel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications',
  );

  @override
  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    await _initPushNotifications();
    await _initLocalNotifications();
  }

  @override
  Future<void> handleMessage(RemoteMessage? message) async {
    if (message == null) {
      return;
    } else {
      final notificationType = message.data['type'].toString();
      final router = getIt.get<AppRouter>();
      switch (notificationType) {
        case 'now':
          final iOSPathImage = await ImagePathConverter.getImageFromAssets(
            AssetPaths.profile,
          );
          await _localNotifications.show(
            message.hashCode,
            message.notification?.title,
            message.notification?.body,
            NotificationDetails(
              iOS: DarwinNotificationDetails(
                attachments: [DarwinNotificationAttachment(iOSPathImage)],
              ),
              android: AndroidNotificationDetails(
                _androidChannel.id,
                _androidChannel.name,
                channelDescription: _androidChannel.description,
                icon: AssetPaths.androidNative,
              ),
            ),
          );
        case 'playground':
          await router.push(const PlaygroundRoute());
        default:
          await router.replace(const RouteNavigator());
      }
    }
  }

  Future<void> _initPushNotifications() async {
    await firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    await firebaseMessaging.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
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
          ),
        ),
        payload: jsonEncode(message.toMap()),
      );
    });
  }

  Future<void> _initLocalNotifications() async {
    const iOS = DarwinInitializationSettings();
    const android = AndroidInitializationSettings(AssetPaths.androidNative);
    const settings = InitializationSettings(android: android, iOS: iOS);
    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (payload) {
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
}
