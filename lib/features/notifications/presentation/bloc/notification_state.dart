part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  const factory NotificationState.setting() = _Setting;

  const factory NotificationState.settingComplete() = _SettingComplete;
}
