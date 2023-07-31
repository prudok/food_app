// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sorting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SortingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortingEventCopyWith<$Res> {
  factory $SortingEventCopyWith(
          SortingEvent value, $Res Function(SortingEvent) then) =
      _$SortingEventCopyWithImpl<$Res, SortingEvent>;
}

/// @nodoc
class _$SortingEventCopyWithImpl<$Res, $Val extends SortingEvent>
    implements $SortingEventCopyWith<$Res> {
  _$SortingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({DishList dishList});

  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$SortingEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$Started(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DishListCopyWith<$Res> get dishList {
    return $DishListCopyWith<$Res>(_value.dishList, (value) {
      return _then(_value.copyWith(dishList: value));
    });
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingEvent.started(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) {
    return started(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) {
    return started?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SortingEvent {
  const factory Started({required final DishList dishList}) = _$Started;

  DishList get dishList;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortBySaladCopyWith<$Res> {
  factory _$$SortBySaladCopyWith(
          _$SortBySalad value, $Res Function(_$SortBySalad) then) =
      __$$SortBySaladCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SortBySaladCopyWithImpl<$Res>
    extends _$SortingEventCopyWithImpl<$Res, _$SortBySalad>
    implements _$$SortBySaladCopyWith<$Res> {
  __$$SortBySaladCopyWithImpl(
      _$SortBySalad _value, $Res Function(_$SortBySalad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SortBySalad implements SortBySalad {
  const _$SortBySalad();

  @override
  String toString() {
    return 'SortingEvent.sortBySalad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SortBySalad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) {
    return sortBySalad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) {
    return sortBySalad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) {
    if (sortBySalad != null) {
      return sortBySalad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) {
    return sortBySalad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) {
    return sortBySalad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) {
    if (sortBySalad != null) {
      return sortBySalad(this);
    }
    return orElse();
  }
}

abstract class SortBySalad implements SortingEvent {
  const factory SortBySalad() = _$SortBySalad;
}

/// @nodoc
abstract class _$$AllCopyWith<$Res> {
  factory _$$AllCopyWith(_$All value, $Res Function(_$All) then) =
      __$$AllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllCopyWithImpl<$Res> extends _$SortingEventCopyWithImpl<$Res, _$All>
    implements _$$AllCopyWith<$Res> {
  __$$AllCopyWithImpl(_$All _value, $Res Function(_$All) _then)
      : super(_value, _then);
}

/// @nodoc

class _$All implements All {
  const _$All();

  @override
  String toString() {
    return 'SortingEvent.all()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$All);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) {
    return all();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) {
    return all?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class All implements SortingEvent {
  const factory All() = _$All;
}

/// @nodoc
abstract class _$$SortByRiceCopyWith<$Res> {
  factory _$$SortByRiceCopyWith(
          _$SortByRice value, $Res Function(_$SortByRice) then) =
      __$$SortByRiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SortByRiceCopyWithImpl<$Res>
    extends _$SortingEventCopyWithImpl<$Res, _$SortByRice>
    implements _$$SortByRiceCopyWith<$Res> {
  __$$SortByRiceCopyWithImpl(
      _$SortByRice _value, $Res Function(_$SortByRice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SortByRice implements SortByRice {
  const _$SortByRice();

  @override
  String toString() {
    return 'SortingEvent.sortByRice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SortByRice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) {
    return sortByRice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) {
    return sortByRice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) {
    if (sortByRice != null) {
      return sortByRice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) {
    return sortByRice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) {
    return sortByRice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) {
    if (sortByRice != null) {
      return sortByRice(this);
    }
    return orElse();
  }
}

abstract class SortByRice implements SortingEvent {
  const factory SortByRice() = _$SortByRice;
}

/// @nodoc
abstract class _$$SortByFishCopyWith<$Res> {
  factory _$$SortByFishCopyWith(
          _$SortByFish value, $Res Function(_$SortByFish) then) =
      __$$SortByFishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SortByFishCopyWithImpl<$Res>
    extends _$SortingEventCopyWithImpl<$Res, _$SortByFish>
    implements _$$SortByFishCopyWith<$Res> {
  __$$SortByFishCopyWithImpl(
      _$SortByFish _value, $Res Function(_$SortByFish) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SortByFish implements SortByFish {
  const _$SortByFish();

  @override
  String toString() {
    return 'SortingEvent.sortByFish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SortByFish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) started,
    required TResult Function() sortBySalad,
    required TResult Function() all,
    required TResult Function() sortByRice,
    required TResult Function() sortByFish,
  }) {
    return sortByFish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? started,
    TResult? Function()? sortBySalad,
    TResult? Function()? all,
    TResult? Function()? sortByRice,
    TResult? Function()? sortByFish,
  }) {
    return sortByFish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? started,
    TResult Function()? sortBySalad,
    TResult Function()? all,
    TResult Function()? sortByRice,
    TResult Function()? sortByFish,
    required TResult orElse(),
  }) {
    if (sortByFish != null) {
      return sortByFish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortBySalad value) sortBySalad,
    required TResult Function(All value) all,
    required TResult Function(SortByRice value) sortByRice,
    required TResult Function(SortByFish value) sortByFish,
  }) {
    return sortByFish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortBySalad value)? sortBySalad,
    TResult? Function(All value)? all,
    TResult? Function(SortByRice value)? sortByRice,
    TResult? Function(SortByFish value)? sortByFish,
  }) {
    return sortByFish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortBySalad value)? sortBySalad,
    TResult Function(All value)? all,
    TResult Function(SortByRice value)? sortByRice,
    TResult Function(SortByFish value)? sortByFish,
    required TResult orElse(),
  }) {
    if (sortByFish != null) {
      return sortByFish(this);
    }
    return orElse();
  }
}

abstract class SortByFish implements SortingEvent {
  const factory SortByFish() = _$SortByFish;
}

/// @nodoc
mixin _$SortingState {
  DishList get dishList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SortingStateCopyWith<SortingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortingStateCopyWith<$Res> {
  factory $SortingStateCopyWith(
          SortingState value, $Res Function(SortingState) then) =
      _$SortingStateCopyWithImpl<$Res, SortingState>;
  @useResult
  $Res call({DishList dishList});

  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class _$SortingStateCopyWithImpl<$Res, $Val extends SortingState>
    implements $SortingStateCopyWith<$Res> {
  _$SortingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_value.copyWith(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DishListCopyWith<$Res> get dishList {
    return $DishListCopyWith<$Res>(_value.dishList, (value) {
      return _then(_value.copyWith(dishList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DishList dishList});

  @override
  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$_Initial(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingState.initial(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) {
    return initial(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) {
    return initial?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SortingState {
  const factory _Initial({required final DishList dishList}) = _$_Initial;

  @override
  DishList get dishList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithoutSortingCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_WithoutSortingCopyWith(
          _$_WithoutSorting value, $Res Function(_$_WithoutSorting) then) =
      __$$_WithoutSortingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DishList dishList});

  @override
  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$_WithoutSortingCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res, _$_WithoutSorting>
    implements _$$_WithoutSortingCopyWith<$Res> {
  __$$_WithoutSortingCopyWithImpl(
      _$_WithoutSorting _value, $Res Function(_$_WithoutSorting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$_WithoutSorting(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }
}

/// @nodoc

class _$_WithoutSorting implements _WithoutSorting {
  const _$_WithoutSorting({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingState.withoutSorting(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithoutSorting &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithoutSortingCopyWith<_$_WithoutSorting> get copyWith =>
      __$$_WithoutSortingCopyWithImpl<_$_WithoutSorting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) {
    return withoutSorting(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) {
    return withoutSorting?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) {
    if (withoutSorting != null) {
      return withoutSorting(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) {
    return withoutSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) {
    return withoutSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) {
    if (withoutSorting != null) {
      return withoutSorting(this);
    }
    return orElse();
  }
}

abstract class _WithoutSorting implements SortingState {
  const factory _WithoutSorting({required final DishList dishList}) =
      _$_WithoutSorting;

  @override
  DishList get dishList;
  @override
  @JsonKey(ignore: true)
  _$$_WithoutSortingCopyWith<_$_WithoutSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaladSortingCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_SaladSortingCopyWith(
          _$_SaladSorting value, $Res Function(_$_SaladSorting) then) =
      __$$_SaladSortingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DishList dishList});

  @override
  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$_SaladSortingCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res, _$_SaladSorting>
    implements _$$_SaladSortingCopyWith<$Res> {
  __$$_SaladSortingCopyWithImpl(
      _$_SaladSorting _value, $Res Function(_$_SaladSorting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$_SaladSorting(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }
}

/// @nodoc

class _$_SaladSorting implements _SaladSorting {
  const _$_SaladSorting({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingState.saladSorting(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaladSorting &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaladSortingCopyWith<_$_SaladSorting> get copyWith =>
      __$$_SaladSortingCopyWithImpl<_$_SaladSorting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) {
    return saladSorting(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) {
    return saladSorting?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) {
    if (saladSorting != null) {
      return saladSorting(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) {
    return saladSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) {
    return saladSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) {
    if (saladSorting != null) {
      return saladSorting(this);
    }
    return orElse();
  }
}

abstract class _SaladSorting implements SortingState {
  const factory _SaladSorting({required final DishList dishList}) =
      _$_SaladSorting;

  @override
  DishList get dishList;
  @override
  @JsonKey(ignore: true)
  _$$_SaladSortingCopyWith<_$_SaladSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RiceSortingCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_RiceSortingCopyWith(
          _$_RiceSorting value, $Res Function(_$_RiceSorting) then) =
      __$$_RiceSortingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DishList dishList});

  @override
  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$_RiceSortingCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res, _$_RiceSorting>
    implements _$$_RiceSortingCopyWith<$Res> {
  __$$_RiceSortingCopyWithImpl(
      _$_RiceSorting _value, $Res Function(_$_RiceSorting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$_RiceSorting(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }
}

/// @nodoc

class _$_RiceSorting implements _RiceSorting {
  const _$_RiceSorting({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingState.riceSorting(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RiceSorting &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RiceSortingCopyWith<_$_RiceSorting> get copyWith =>
      __$$_RiceSortingCopyWithImpl<_$_RiceSorting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) {
    return riceSorting(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) {
    return riceSorting?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) {
    if (riceSorting != null) {
      return riceSorting(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) {
    return riceSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) {
    return riceSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) {
    if (riceSorting != null) {
      return riceSorting(this);
    }
    return orElse();
  }
}

abstract class _RiceSorting implements SortingState {
  const factory _RiceSorting({required final DishList dishList}) =
      _$_RiceSorting;

  @override
  DishList get dishList;
  @override
  @JsonKey(ignore: true)
  _$$_RiceSortingCopyWith<_$_RiceSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FishSortingCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_FishSortingCopyWith(
          _$_FishSorting value, $Res Function(_$_FishSorting) then) =
      __$$_FishSortingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DishList dishList});

  @override
  $DishListCopyWith<$Res> get dishList;
}

/// @nodoc
class __$$_FishSortingCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res, _$_FishSorting>
    implements _$$_FishSortingCopyWith<$Res> {
  __$$_FishSortingCopyWithImpl(
      _$_FishSorting _value, $Res Function(_$_FishSorting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishList = null,
  }) {
    return _then(_$_FishSorting(
      dishList: null == dishList
          ? _value.dishList
          : dishList // ignore: cast_nullable_to_non_nullable
              as DishList,
    ));
  }
}

/// @nodoc

class _$_FishSorting implements _FishSorting {
  const _$_FishSorting({required this.dishList});

  @override
  final DishList dishList;

  @override
  String toString() {
    return 'SortingState.fishSorting(dishList: $dishList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FishSorting &&
            (identical(other.dishList, dishList) ||
                other.dishList == dishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FishSortingCopyWith<_$_FishSorting> get copyWith =>
      __$$_FishSortingCopyWithImpl<_$_FishSorting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DishList dishList) initial,
    required TResult Function(DishList dishList) withoutSorting,
    required TResult Function(DishList dishList) saladSorting,
    required TResult Function(DishList dishList) riceSorting,
    required TResult Function(DishList dishList) fishSorting,
  }) {
    return fishSorting(dishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DishList dishList)? initial,
    TResult? Function(DishList dishList)? withoutSorting,
    TResult? Function(DishList dishList)? saladSorting,
    TResult? Function(DishList dishList)? riceSorting,
    TResult? Function(DishList dishList)? fishSorting,
  }) {
    return fishSorting?.call(dishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DishList dishList)? initial,
    TResult Function(DishList dishList)? withoutSorting,
    TResult Function(DishList dishList)? saladSorting,
    TResult Function(DishList dishList)? riceSorting,
    TResult Function(DishList dishList)? fishSorting,
    required TResult orElse(),
  }) {
    if (fishSorting != null) {
      return fishSorting(dishList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithoutSorting value) withoutSorting,
    required TResult Function(_SaladSorting value) saladSorting,
    required TResult Function(_RiceSorting value) riceSorting,
    required TResult Function(_FishSorting value) fishSorting,
  }) {
    return fishSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithoutSorting value)? withoutSorting,
    TResult? Function(_SaladSorting value)? saladSorting,
    TResult? Function(_RiceSorting value)? riceSorting,
    TResult? Function(_FishSorting value)? fishSorting,
  }) {
    return fishSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithoutSorting value)? withoutSorting,
    TResult Function(_SaladSorting value)? saladSorting,
    TResult Function(_RiceSorting value)? riceSorting,
    TResult Function(_FishSorting value)? fishSorting,
    required TResult orElse(),
  }) {
    if (fishSorting != null) {
      return fishSorting(this);
    }
    return orElse();
  }
}

abstract class _FishSorting implements SortingState {
  const factory _FishSorting({required final DishList dishList}) =
      _$_FishSorting;

  @override
  DishList get dishList;
  @override
  @JsonKey(ignore: true)
  _$$_FishSortingCopyWith<_$_FishSorting> get copyWith =>
      throw _privateConstructorUsedError;
}
