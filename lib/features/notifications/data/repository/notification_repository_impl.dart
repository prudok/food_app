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
      title: 'Order has been created!',
      body: 'Your order has been transferred to our database.',
    ),
  );

  @override
  Future<void> getNotification() async {
    await firebaseAPIImpl.handleMessage(_tmpRemoteMessage);
  }

  @override
  Future<void> setNotificationByTime() async {
    await Future<void>.delayed(const Duration(seconds: 5));
    await firebaseAPIImpl.handleMessage(_tmpRemoteMessage);
  }
}
