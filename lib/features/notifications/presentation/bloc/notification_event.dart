part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = _Started;

  const factory NotificationEvent.setNow() = SetNow;

  const factory NotificationEvent.setByTime() = SetByTime;
}
