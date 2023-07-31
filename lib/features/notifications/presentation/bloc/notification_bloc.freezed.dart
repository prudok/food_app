// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setNow,
    required TResult Function() setByTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setNow,
    TResult? Function()? setByTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setNow,
    TResult Function()? setByTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetNow value) setNow,
    required TResult Function(SetByTime value) setByTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetNow value)? setNow,
    TResult? Function(SetByTime value)? setByTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetNow value)? setNow,
    TResult Function(SetByTime value)? setByTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NotificationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setNow,
    required TResult Function() setByTime,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setNow,
    TResult? Function()? setByTime,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setNow,
    TResult Function()? setByTime,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetNow value) setNow,
    required TResult Function(SetByTime value) setByTime,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetNow value)? setNow,
    TResult? Function(SetByTime value)? setByTime,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetNow value)? setNow,
    TResult Function(SetByTime value)? setByTime,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotificationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$SetNowCopyWith<$Res> {
  factory _$$SetNowCopyWith(_$SetNow value, $Res Function(_$SetNow) then) =
      __$$SetNowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetNowCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$SetNow>
    implements _$$SetNowCopyWith<$Res> {
  __$$SetNowCopyWithImpl(_$SetNow _value, $Res Function(_$SetNow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetNow implements SetNow {
  const _$SetNow();

  @override
  String toString() {
    return 'NotificationEvent.setNow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetNow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setNow,
    required TResult Function() setByTime,
  }) {
    return setNow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setNow,
    TResult? Function()? setByTime,
  }) {
    return setNow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setNow,
    TResult Function()? setByTime,
    required TResult orElse(),
  }) {
    if (setNow != null) {
      return setNow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetNow value) setNow,
    required TResult Function(SetByTime value) setByTime,
  }) {
    return setNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetNow value)? setNow,
    TResult? Function(SetByTime value)? setByTime,
  }) {
    return setNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetNow value)? setNow,
    TResult Function(SetByTime value)? setByTime,
    required TResult orElse(),
  }) {
    if (setNow != null) {
      return setNow(this);
    }
    return orElse();
  }
}

abstract class SetNow implements NotificationEvent {
  const factory SetNow() = _$SetNow;
}

/// @nodoc
abstract class _$$SetByTimeCopyWith<$Res> {
  factory _$$SetByTimeCopyWith(
          _$SetByTime value, $Res Function(_$SetByTime) then) =
      __$$SetByTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetByTimeCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$SetByTime>
    implements _$$SetByTimeCopyWith<$Res> {
  __$$SetByTimeCopyWithImpl(
      _$SetByTime _value, $Res Function(_$SetByTime) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetByTime implements SetByTime {
  const _$SetByTime();

  @override
  String toString() {
    return 'NotificationEvent.setByTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetByTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setNow,
    required TResult Function() setByTime,
  }) {
    return setByTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setNow,
    TResult? Function()? setByTime,
  }) {
    return setByTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setNow,
    TResult Function()? setByTime,
    required TResult orElse(),
  }) {
    if (setByTime != null) {
      return setByTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetNow value) setNow,
    required TResult Function(SetByTime value) setByTime,
  }) {
    return setByTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetNow value)? setNow,
    TResult? Function(SetByTime value)? setByTime,
  }) {
    return setByTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetNow value)? setNow,
    TResult Function(SetByTime value)? setByTime,
    required TResult orElse(),
  }) {
    if (setByTime != null) {
      return setByTime(this);
    }
    return orElse();
  }
}

abstract class SetByTime implements NotificationEvent {
  const factory SetByTime() = _$SetByTime;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() setting,
    required TResult Function() settingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? setting,
    TResult? Function()? settingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? setting,
    TResult Function()? settingComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setting value) setting,
    required TResult Function(_SettingComplete value) settingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Setting value)? setting,
    TResult? Function(_SettingComplete value)? settingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setting value)? setting,
    TResult Function(_SettingComplete value)? settingComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() setting,
    required TResult Function() settingComplete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? setting,
    TResult? Function()? settingComplete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? setting,
    TResult Function()? settingComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setting value) setting,
    required TResult Function(_SettingComplete value) settingComplete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Setting value)? setting,
    TResult? Function(_SettingComplete value)? settingComplete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setting value)? setting,
    TResult Function(_SettingComplete value)? settingComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SettingCopyWith<$Res> {
  factory _$$_SettingCopyWith(
          _$_Setting value, $Res Function(_$_Setting) then) =
      __$$_SettingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SettingCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Setting>
    implements _$$_SettingCopyWith<$Res> {
  __$$_SettingCopyWithImpl(_$_Setting _value, $Res Function(_$_Setting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Setting implements _Setting {
  const _$_Setting();

  @override
  String toString() {
    return 'NotificationState.setting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Setting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() setting,
    required TResult Function() settingComplete,
  }) {
    return setting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? setting,
    TResult? Function()? settingComplete,
  }) {
    return setting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? setting,
    TResult Function()? settingComplete,
    required TResult orElse(),
  }) {
    if (setting != null) {
      return setting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setting value) setting,
    required TResult Function(_SettingComplete value) settingComplete,
  }) {
    return setting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Setting value)? setting,
    TResult? Function(_SettingComplete value)? settingComplete,
  }) {
    return setting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setting value)? setting,
    TResult Function(_SettingComplete value)? settingComplete,
    required TResult orElse(),
  }) {
    if (setting != null) {
      return setting(this);
    }
    return orElse();
  }
}

abstract class _Setting implements NotificationState {
  const factory _Setting() = _$_Setting;
}

/// @nodoc
abstract class _$$_SettingCompleteCopyWith<$Res> {
  factory _$$_SettingCompleteCopyWith(
          _$_SettingComplete value, $Res Function(_$_SettingComplete) then) =
      __$$_SettingCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SettingCompleteCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_SettingComplete>
    implements _$$_SettingCompleteCopyWith<$Res> {
  __$$_SettingCompleteCopyWithImpl(
      _$_SettingComplete _value, $Res Function(_$_SettingComplete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SettingComplete implements _SettingComplete {
  const _$_SettingComplete();

  @override
  String toString() {
    return 'NotificationState.settingComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SettingComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() setting,
    required TResult Function() settingComplete,
  }) {
    return settingComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? setting,
    TResult? Function()? settingComplete,
  }) {
    return settingComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? setting,
    TResult Function()? settingComplete,
    required TResult orElse(),
  }) {
    if (settingComplete != null) {
      return settingComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setting value) setting,
    required TResult Function(_SettingComplete value) settingComplete,
  }) {
    return settingComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Setting value)? setting,
    TResult? Function(_SettingComplete value)? settingComplete,
  }) {
    return settingComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setting value)? setting,
    TResult Function(_SettingComplete value)? settingComplete,
    required TResult orElse(),
  }) {
    if (settingComplete != null) {
      return settingComplete(this);
    }
    return orElse();
  }
}

abstract class _SettingComplete implements NotificationState {
  const factory _SettingComplete() = _$_SettingComplete;
}
