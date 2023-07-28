import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:food_app/features/notifications/data/datasource/firebase_api.dart';
import 'package:food_app/features/notifications/domain/repository/notification_reposiotry.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  NotificationRepositoryImpl(this.firebaseAPIImpl);

  final FirebaseAPI firebaseAPIImpl;
  final _tmpRemoteMessage = const RemoteMessage(
    data: {'type': 'now'},
    notification: RemoteNotification(
      title: 'Just Now Notification',
      body: 'Lorem Ipsum Elgreda joema',
    ),
  );

  @override
  Future<void> getNotification() async {
    firebaseAPIImpl.handleMessage(_tmpRemoteMessage);
  }

  @override
  Future<void> setNotificationByTime() async {
    await Future.delayed(const Duration(seconds: 5));
    firebaseAPIImpl.handleMessage(_tmpRemoteMessage);
  }
}
