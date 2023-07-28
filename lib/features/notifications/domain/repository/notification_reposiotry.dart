import 'dart:async';

abstract class NotificationRepository {
  Future<void> setNotificationByTime();

  Future<void> getNotification();
}
