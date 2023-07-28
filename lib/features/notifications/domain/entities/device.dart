import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class DeviceNotificationInfo with _$DeviceNotificationInfo {
  const factory DeviceNotificationInfo({
    required String token,
  }) = _DeviceNotificationInfo;

  factory DeviceNotificationInfo.fromJson(Map<String, Object?> json) =>
      _$DeviceNotificationInfoFromJson(json);
}
